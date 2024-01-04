class lamp {

   class { 'lamp::apache': }
   class { 'lamp::php': }
   class { 'lamp::mysql': }

}
