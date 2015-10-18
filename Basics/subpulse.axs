<patch-1.0>
   <obj type="disp/scope 128 b trig" sha="1d8e04cf76c1be799824f4065917f788e705b029" uuid="11747dcd1dc9afe4919f537c861fb18b80b4e4e" name="scope_2" x="616" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="pw" x="336" y="70">
      <params>
         <frac32.u.map name="value" onParent="true" value="45.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/pwm" sha="4f216b9a125822434f813198e9be4da0b5e8b042" uuid="a6b40ff63f161d8bac8ea2eba5b0dbffcf49b472" name="pwm_1" x="434" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" sha="d2b06e818348b14523c68fd021077192860093c0" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="56" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" sha="2c4b16047d03b574d8a72b651f130895749eb670" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="224" y="294">
      <params>
         <frac32.s.map name="a" value="-49.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="23.5"/>
         <frac32.s.map name="r" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="560" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="monout" x="854" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/scope 128 b" sha="a7ce66703f067983726298da17fabab409dca3dc" uuid="2b69f51a714fc276503ef10c349d6d253d1ae5e2" name="scope_1" x="812" y="448">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="pwm_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="scope_2" inlet="in"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="scope_1" inlet="in"/>
         <dest obj="monout" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="pwm_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="pw" outlet="out"/>
         <dest obj="pwm_1" inlet="pw"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Alvaro G [Andor]</Author>
      <License>CC BY SA 3.0</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>336</x>
      <y>23</y>
      <width>1584</width>
      <height>1012</height>
   </windowPos>
</patch-1.0>