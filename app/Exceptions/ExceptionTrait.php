<?php

namespace App\Exceptions;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;


trait ExceptionTrait
{
    public function apiException($request, $exception)
    {
       if($this->isModel($exception)) {
           return $this->ModelResponse($exception);
        }
        if($this->isHttp($exception)) {
            return $this->HttpResponce($exception);
        }

        return parent::render($request, $exception);
    }

    protected function isModel($exception)
    {
        return $exception instanceof ModelNotFoundException;
    }

    protected function ModelResponse($exception)
    {
        return response()->json([
            'errors' => 'Item not found'
        ], Response::HTTP_NOT_FOUND);
    }

    protected function isHttp($exception)
    {
        return $exception instanceof NotFoundHttpException;
    }

    protected function HttpResponce($exception)
    {
        return response()->json([
            'errors' => 'Incorrect route'
        ], Response::HTTP_NOT_FOUND);
    }
}
