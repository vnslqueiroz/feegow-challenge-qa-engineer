<?php

namespace App\Http\Controllers;

use App\Models\Appointment;
use Illuminate\Http\Request;

class AppointmentController extends Controller
{
    public function index()
    {
        return Appointment::with(['doctor', 'patient'])->get();
    }

    public function store(Request $request)
    {
        $appointment = Appointment::create($request->only(['doctor_id', 'patient_id', 'appointment_date', 'status']));
        return response()->json($appointment, 201);
    }

    public function show($id)
    {
        $appointment = Appointment::with(['doctor', 'patient'])->findOrFail($id);
        return response()->json($appointment);
    }

    public function update(Request $request, $id)
    {
        $appointment = Appointment::findOrFail($id);
        $appointment->update($request->only(['status', 'appointment_date']));
        return response()->json($appointment);
    }

    public function destroy($id)
    {
        Appointment::destroy($id);
        return response()->json(null, 204);
    }
}
