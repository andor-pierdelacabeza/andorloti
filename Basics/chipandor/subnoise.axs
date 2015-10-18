<patch-1.0>
   <obj type="noise/pink" sha="73a919bf86dac4805c4300760b5052e1ec2453c6" uuid="72c03a2468ee865f248733fcf9b12d4cf42b5a61" name="pink_1" x="98" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="monout" x="602" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" sha="d2b06e818348b14523c68fd021077192860093c0" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="42" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" sha="2c4b16047d03b574d8a72b651f130895749eb670" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="266" y="308">
      <params>
         <frac32.s.map name="a" onParent="true" value="-58.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="-20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="462" y="322">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="monout" inlet="outlet"/>
      </net>
      <net>
         <source obj="pink_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>2</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Andor</Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>908</x>
      <y>105</y>
      <width>879</width>
      <height>650</height>
   </windowPos>
</patch-1.0>