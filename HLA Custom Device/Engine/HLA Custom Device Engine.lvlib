﻿<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="19008000">
	<Property Name="NI.Lib.Icon" Type="Bin">'1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(^!!!*Q(C=\&gt;8"&lt;2MR%!813:"$A*T51;!7JA7VI";G"6V^6!P4AFJ1#^/#7F!,TN/'-(++=IC2(-TVS+O`80+:3[QDNP9VYEO]0GP@@NM_LD_\`K4&amp;2`NI`\;^0.WE\\ZH0]8D2;2'N3K6]:DK&gt;?1D(`H)2T\SFL?]Z3VP?=N,8P+3F\TE*5^ZSF/?]J3H@$PE)1^ZS*('Z'/C-?A99(2'C@%R0--T0-0D;QT0]!T0]!S0,D%]QT-]QT-]&lt;IPB':\B':\B-&gt;1GG?W1]QS0Y;.ZGK&gt;ZGK&gt;Z4"H.UQ"NMD:Q'Q1DWM6WUDT.UTR/IXG;JXG;JXF=DO:JHO:JHO:RS\9KP7E?BZT(-&amp;%]R6-]R6-]BI\C+:\C+:\C-6U54`%52*GQ$)Y1Z;&lt;3I8QJHO,R+YKH?)KH?)L(J?U*V&lt;9S$]XDE0-E4`)E4`)EDS%C?:)H?:)H?1Q&lt;S:-]S:-]S7/K3*\E3:Y%3:/;0N*A[=&lt;5+18*YW@&lt;,&lt;E^J&gt;YEO2U2;`0'WJ3R.FOM422L=]2[[,%?:KS(&amp;'PR9SVKL-7+N1CR`LB9[&amp;C97*0%OPH2-?Y_&lt;_KK,OKM4OKI$GKP&gt;I^&lt;`X,(_`U?N^MNLN&gt;L8#[8/*`0=4K&gt;YHA]RO&amp;QC0V_(\P&gt;\OUV].XR^E,Y_6Z[=@YH^5\`3`_$&gt;W.]DF`(N59`!/&lt;!-PQ!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">419463168</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Item Name="Data Encoding_Decoding" Type="Folder"/>
	<Item Name="Engine" Type="Folder">
		<Item Name="Init" Type="Folder">
			<Item Name="build local designator settings string (MAK).vi" Type="VI" URL="../Init/build local designator settings string (MAK).vi"/>
			<Item Name="Initialization Steps.vi" Type="VI" URL="../Init/Initialization Steps.vi"/>
			<Item Name="Initialize Engine.vi" Type="VI" URL="../Init/Initialize Engine.vi"/>
			<Item Name="Initialize HLA helpers.vi" Type="VI" URL="../Init/Initialize HLA helpers.vi"/>
		</Item>
		<Item Name="Run" Type="Folder">
			<Item Name="_subVIs" Type="Folder">
				<Item Name="build InteractionInfoReceived payload.vi" Type="VI" URL="../_subVIs/build InteractionInfoReceived payload.vi"/>
				<Item Name="build InteractionParameterReceived payload.vi" Type="VI" URL="../_subVIs/build InteractionParameterReceived payload.vi"/>
				<Item Name="Check Loop Error.vi" Type="VI" URL="../_subVIs/Check Loop Error.vi"/>
				<Item Name="Error Handler - Event Handling Loop.vi" Type="VI" URL="../_subVIs/Error Handler - Event Handling Loop.vi"/>
				<Item Name="Error Handler - Message Handling Loop.vi" Type="VI" URL="../_subVIs/Error Handler - Message Handling Loop.vi"/>
				<Item Name="get InteractionParameterReceived element by name.vi" Type="VI" URL="../_subVIs/get InteractionParameterReceived element by name.vi"/>
				<Item Name="Message Queue.lvlib" Type="Library" URL="../_subVIs/MessageQueue/Message Queue.lvlib"/>
				<Item Name="User Events.lvlib" Type="Library" URL="../_subVIs/UserEvents/User Events.lvlib"/>
			</Item>
			<Item Name="HLA Custom Device.Async.vi" Type="VI" URL="../HLA Custom Device.Async.vi"/>
		</Item>
		<Item Name="Shut Down" Type="Folder"/>
	</Item>
	<Item Name="Types" Type="Folder">
		<Item Name="AsyncDataSpace.ctl" Type="VI" URL="../AsyncDataSpace.ctl"/>
		<Item Name="interaction_attribute_received_type.ctl" Type="VI" URL="../interaction_attribute_received_type.ctl"/>
		<Item Name="interaction_info_received_type.ctl" Type="VI" URL="../interaction_info_received_type.ctl"/>
		<Item Name="map_attr_param_data.ctl" Type="VI" URL="../map_attr_param_data.ctl"/>
		<Item Name="map_object.ctl" Type="VI" URL="../map_object.ctl"/>
		<Item Name="map_object_value.ctl" Type="VI" URL="../map_object_value.ctl"/>
		<Item Name="RTinlineRuntimeData.ctl" Type="VI" URL="../RTinlineRuntimeData.ctl"/>
		<Item Name="RTStateVariables.ctl" Type="VI" URL="../RTStateVariables.ctl"/>
	</Item>
	<Item Name="Initialize Interaction Map.vi" Type="VI" URL="../_subVIs/Initialize Interaction Map.vi"/>
	<Item Name="Initialize Object Map.vi" Type="VI" URL="../_subVIs/Initialize Object Map.vi"/>
	<Item Name="map_interaction.ctl" Type="VI" URL="../map_interaction.ctl"/>
	<Item Name="map_interaction_value.ctl" Type="VI" URL="../map_interaction_value.ctl"/>
	<Item Name="RT Driver VI.vi" Type="VI" URL="../RT Driver VI.vi"/>
</Library>
