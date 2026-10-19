<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('jurnal_kbm', function (Blueprint $table) {
            $table->foreign('guru_id')->references('id')->on('users');
            $table->foreign('kelas_id')->references('id')->on('master_kelas');
            $table->foreign('mapel_id')->references('id')->on('master_mapels')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::table('jurnal_kbm', function (Blueprint $table) {
            $table->dropForeign(['guru_id']);
            $table->dropForeign(['kelas_id']);
            $table->dropForeign(['mapel_id']);
        });
    }
};
