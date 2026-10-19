<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('jurnal_ekskul', function (Blueprint $table) {
            $table->foreign('guru_id')->references('id')->on('users');
            $table->foreign('ekskul_id')->references('id')->on('master_ekskul');
        });
    }

    public function down(): void
    {
        Schema::table('jurnal_ekskul', function (Blueprint $table) {
            $table->dropForeign(['guru_id']);
            $table->dropForeign(['ekskul_id']);
        });
    }
};
