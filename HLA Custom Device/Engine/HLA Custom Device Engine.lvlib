<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="19008000">
	<Property Name="NI.Lib.Icon" Type="Bin">'1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(^!!!*Q(C=\&gt;8"&lt;2MR%!813:"$A*T51;!7JA7VI";G"6V^6!P4AFJ1#^/#7F!,TN/'-(++=IC2(-TVS+O`80+:3[QDNP9VYEO]0GP@@NM_LD_\`K4&amp;2`NI`\;^0.WE\\ZH0]8D2;2'N3K6]:DK&gt;?1D(`H)2T\SFL?]Z3VP?=N,8P+3F\TE*5^ZSF/?]J3H@$PE)1^ZS*('Z'/C-?A99(2'C@%R0--T0-0D;QT0]!T0]!S0,D%]QT-]QT-]&lt;IPB':\B':\B-&gt;1GG?W1]QS0Y;.ZGK&gt;ZGK&gt;Z4"H.UQ"NMD:Q'Q1DWM6WUDT.UTR/IXG;JXG;JXF=DO:JHO:JHO:RS\9KP7E?BZT(-&amp;%]R6-]R6-]BI\C+:\C+:\C-6U54`%52*GQ$)Y1Z;&lt;3I8QJHO,R+YKH?)KH?)L(J?U*V&lt;9S$]XDE0-E4`)E4`)EDS%C?:)H?:)H?1Q&lt;S:-]S:-]S7/K3*\E3:Y%3:/;0N*A[=&lt;5+18*YW@&lt;,&lt;E^J&gt;YEO2U2;`0'WJ3R.FOM422L=]2[[,%?:KS(&amp;'PR9SVKL-7+N1CR`LB9[&amp;C97*0%OPH2-?Y_&lt;_KK,OKM4OKI$GKP&gt;I^&lt;`X,(_`U?N^MNLN&gt;L8#[8/*`0=4K&gt;YHA]RO&amp;QC0V_(\P&gt;\OUV].XR^E,Y_6Z[=@YH^5\`3`_$&gt;W.]DF`(N59`!/&lt;!-PQ!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">419463168</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Item Name="Engine" Type="Folder">
		<Item Name="Init" Type="Folder">
			<Item Name="build local designator settings string (MAK).vi" Type="VI" URL="../Init/build local designator settings string (MAK).vi"/>
			<Item Name="Get list of FOM initialization steps.vi" Type="VI" URL="../Init/Get list of FOM initialization steps.vi"/>
			<Item Name="Initialize HLA helpers.vi" Type="VI" URL="../Init/Initialize HLA helpers.vi"/>
			<Item Name="Initialize Interaction Map (incoming).vi" Type="VI" URL="../Init/Initialize Interaction Map (incoming).vi"/>
			<Item Name="Initialize Object Map.vi" Type="VI" URL="../Init/Initialize Object Map.vi"/>
			<Item Name="Initialize RT Driver.vi" Type="VI" URL="../Init/Initialize RT Driver.vi"/>
		</Item>
		<Item Name="Run" Type="Folder">
			<Item Name="_subVIs" Type="Folder">
				<Item Name="helpers" Type="Folder">
					<Item Name="Message Queue.lvlib" Type="Library" URL="../_subVIs/MessageQueue/Message Queue.lvlib"/>
					<Item Name="User Events.lvlib" Type="Library" URL="../_subVIs/UserEvents/User Events.lvlib"/>
				</Item>
				<Item Name="ObjectManagement" Type="Folder">
					<Item Name="Build InteractionInfo payload.vi" Type="VI" URL="../_subVIs/Build InteractionInfo payload.vi"/>
					<Item Name="build InteractionParameterReceived payload.vi" Type="VI" URL="../_subVIs/build InteractionParameterReceived payload.vi"/>
					<Item Name="build map_object_key.vi" Type="VI" URL="../_subVIs/build map_object_key.vi"/>
					<Item Name="build Object Information payload.vi" Type="VI" URL="../_subVIs/build Object Information payload.vi"/>
					<Item Name="get Interaction Information element by name.vi" Type="VI" URL="../_subVIs/get Interaction Information element by name.vi"/>
					<Item Name="get Object Information element by name.vi" Type="VI" URL="../_subVIs/get Object Information element by name.vi"/>
					<Item Name="Register Discovered Object Instance (incoming).vi" Type="VI" URL="../_subVIs/Register Discovered Object Instance (incoming).vi"/>
					<Item Name="Update VS channels (interaction data).vi" Type="VI" URL="../Update VS channels (interaction data).vi"/>
					<Item Name="Update VS channels (interaction info).vi" Type="VI" URL="../Update VS channels (interaction info).vi"/>
					<Item Name="Update VS channels (object data).vi" Type="VI" URL="../_subVIs/Update VS channels (object data).vi"/>
					<Item Name="Update VS channels (object info).vi" Type="VI" URL="../_subVIs/Update VS channels (object info).vi"/>
				</Item>
				<Item Name="Check Loop Error.vi" Type="VI" URL="../_subVIs/Check Loop Error.vi"/>
				<Item Name="Error Handler - Event Handling Loop.vi" Type="VI" URL="../_subVIs/Error Handler - Event Handling Loop.vi"/>
				<Item Name="Error Handler - Message Handling Loop.vi" Type="VI" URL="../_subVIs/Error Handler - Message Handling Loop.vi"/>
			</Item>
			<Item Name="HLA Custom Device.Async.vi" Type="VI" URL="../HLA Custom Device.Async.vi"/>
			<Item Name="Inline Write (Interactions).vi" Type="VI" URL="../Inline Write (Interactions).vi"/>
		</Item>
		<Item Name="Shut Down" Type="Folder">
			<Item Name="Shut Down RT Driver.vi" Type="VI" URL="../Shut Down RT Driver.vi"/>
		</Item>
	</Item>
	<Item Name="Types" Type="Folder">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="AsyncDataSpace.ctl" Type="VI" URL="../_typedefs/AsyncDataSpace.ctl"/>
		<Item Name="dataElement_type.ctl" Type="VI" URL="../_typedefs/dataElement_type.ctl"/>
		<Item Name="map_object_vs_instance.ctl" Type="VI" URL="../_typedefs/map_object_vs_instance.ctl"/>
		<Item Name="interaction_attribute_received_type.ctl" Type="VI" URL="../_typedefs/interaction_attribute_received_type.ctl"/>
		<Item Name="interaction_info_received_type.ctl" Type="VI" URL="../_typedefs/interaction_info_received_type.ctl"/>
		<Item Name="map_attr_param_data.ctl" Type="VI" URL="../_typedefs/map_attr_param_data.ctl"/>
		<Item Name="map_in_interaction.ctl" Type="VI" URL="../_typedefs/map_in_interaction.ctl"/>
		<Item Name="map_interaction_value.ctl" Type="VI" URL="../_typedefs/map_interaction_value.ctl"/>
		<Item Name="map_object.ctl" Type="VI" URL="../_typedefs/map_object.ctl"/>
		<Item Name="map_object_instance.ctl" Type="VI" URL="../_typedefs/map_object_instance.ctl"/>
		<Item Name="map_object_instance_value.ctl" Type="VI" URL="../_typedefs/map_object_instance_value.ctl"/>
		<Item Name="map_object_value.ctl" Type="VI" URL="../_typedefs/map_object_value.ctl"/>
		<Item Name="discoverObjectInstance_type.ctl" Type="VI" URL="../_typedefs/discoverObjectInstance_type.ctl"/>
		<Item Name="object_info_received_type.ctl" Type="VI" URL="../_typedefs/object_info_received_type.ctl"/>
		<Item Name="receiveInteraction_type.ctl" Type="VI" URL="../_typedefs/receiveInteraction_type.ctl"/>
		<Item Name="reflectAttributeValues_type.ctl" Type="VI" URL="../_typedefs/reflectAttributeValues_type.ctl"/>
		<Item Name="RTruntimeData.ctl" Type="VI" URL="../RTruntimeData.ctl"/>
		<Item Name="RTStateVariables.ctl" Type="VI" URL="../RTStateVariables.ctl"/>
		<Item Name="map_object_key.ctl" Type="VI" URL="../_typedefs/map_object_key.ctl"/>
		<Item Name="RThlaMapHelpers.ctl" Type="VI" URL="../_typedefs/RThlaMapHelpers.ctl"/>
	</Item>
	<Item Name="Initialize Interaction Map (outgoing).vi" Type="VI" URL="../Init/Initialize Interaction Map (outgoing).vi"/>
	<Item Name="RT Driver VI.vi" Type="VI" URL="../RT Driver VI.vi"/>
</Library>
