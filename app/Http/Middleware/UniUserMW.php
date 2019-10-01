<?php

namespace App\Http\Middleware;

use Carbon\Carbon;
use Closure;
use Auth;
use App\UniUser;

class UniUserMW
{
    public function handle($request, Closure $next)
    {
        $this->RemoveOldTokens();

        $guest = true;
        $nowTime = Carbon::now();
        $uid = \Session::get('_token');
        if (Auth::check()) {
            $uid = Auth::user()->email;
            $guest = false;
        }

        if (!(UniUser::where('uid', $uid)->count() > 0)) //if user doesn't exist
        {
            $uUser = new UniUser();
            $uUser->uid = $uid;
            $uUser->guest = $guest;
            $uUser->expires_at = Carbon::now()->addMinutes(2);
            $uUser->save();
        }
        else
        {
            UniUser::where('uid', $uid)->update([
                'updated_at' => $nowTime,
                'expires_at' => Carbon::now()->addMinutes(2),
            ]);
        }
        return $next($request);
    }

    public function RemoveOldTokens()
    {
        foreach (UniUser::all() as $v)
            if ($v->expires_at < Carbon::now())
                $v->delete();
    }
}
