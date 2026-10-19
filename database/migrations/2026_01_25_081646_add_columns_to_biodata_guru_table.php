<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        if (!Schema::hasTable('biodata_guru')) {
            return;
        }

        Schema::table('biodata_guru', function (Blueprint $table) {
            if (!Schema::hasColumn('biodata_guru', 'user_id')) {
                $table->foreignId('user_id')->constrained()->onDelete('cascade');
            }
            if (!Schema::hasColumn('biodata_guru', 'nip')) {
                $table->string('nip', 20)->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'jabatan')) {
                $table->string('jabatan', 100);
            }
            if (!Schema::hasColumn('biodata_guru', 'no_hp')) {
                $table->string('no_hp', 20)->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'alamat')) {
                $table->text('alamat')->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'foto')) {
                $table->string('foto')->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'tempat_lahir')) {
                $table->string('tempat_lahir')->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'tanggal_lahir')) {
                $table->date('tanggal_lahir')->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'jenis_kelamin')) {
                $table->enum('jenis_kelamin', ['L', 'P'])->nullable();
            }
            if (!Schema::hasColumn('biodata_guru', 'pendidikan_terakhir')) {
                $table->string('pendidikan_terakhir')->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('biodata_guru', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropColumn([
                'user_id', 'nip', 'jabatan', 'no_hp', 'alamat', 'foto',
                'tempat_lahir', 'tanggal_lahir', 'jenis_kelamin', 'pendidikan_terakhir'
            ]);
        });
    }
};
