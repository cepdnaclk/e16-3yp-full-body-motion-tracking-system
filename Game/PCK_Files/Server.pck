GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex5      U      -��`�0��x�5�[   res://Data/DataSheet.json   �      !       [x�h�'kW�橵�[�e,   res://Scenes/Instances/PlayerContainer.tscn       �       �l�i�ĥ#�o��$   res://Scenes/Main/Server.gd.remap   �D      -       ���pb��}.b��',F   res://Scenes/Main/Server.gdc�      �      ��ځ�<�C<.*�    res://Scenes/Main/Server.tscn   �            ��1>�H(�ŧ,=N��Y0   res://Scenes/Singletons/HubConnection.gd.remap   E      :       ��֔��$b��Y��,   res://Scenes/Singletons/HubConnection.gdc   �      �      *TlO�	�p@.��,   res://Scenes/Singletons/ServerData.gd.remap `E      7       {czQ����o
�ԩ(   res://Scenes/Singletons/ServerData.gdc  �#      �      Cp_-n��Qng7�$��0   res://Scenes/Singletons/StateProcessing.gd.remap�E      <       �G2Yd��x��#�j9,   res://Scenes/Singletons/StateProcessing.gdc P&      X      e�d��i���<i��,   res://Scenes/Singletons/StateProcessing.tscn�(      �       ƨJvvv�s����~��    res://Scripts/Combat.gd.remap   �E      )       �G�:�׻үYT��D   res://Scripts/Combat.gdcp)            �;���]E���R(   res://Scripts/PlayerContainer.gd.remap  F      2       �H�{�^`�S�_Q��@$   res://Scripts/PlayerContainer.gdc   �*      m       ��b����8��b�!�,   res://Scripts/PlayerVerification.gd.remap   PF      5       #�<�nt��Ǌ^C�$   res://Scripts/PlayerVerification.gdc�*      a	      HNg�8�v1�+[OAF   res://default_env.tres  `4      �       um�`�N��<*ỳ�8   res://icon.png  �F      �      G1?��z�c��vN��   res://icon.png.import   pB      �      �����%��(#AB�   res://project.binary�S      $      1��E��]�zO�qT��        {
	"Pistol":{
		"Damage":80
	}
}
               [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/PlayerContainer.gd" type="Script" id=1]

[node name="PlayerContainer" type="Node"]
script = ExtResource( 1 )
               GDSC   :      q   �     ���Ӷ���   ������ݶ   �����������������������¶���   ����   ����������Ŷ   ��������������������������Ŷ   �������Ӷ���   ��������������ض   ��������������Ŷ   ����������������������ض   �����϶�   ����������Ķ   ������������Ķ��   ������������ض��   ����������¶   �������Ӷ���   ���������������Ķ���   ������¶   ��������������Ҷ   ��������Ҷ��   ����¶��   �����������������Ҷ�   �������Ӷ���   ���������Ӷ�   ����Ӷ��   �����Ҷ�   ��������������������������¶   �����������Ӷ���   �嶶   ������������Ӷ��   ���������Ӷ�   ߶��   ���Ӷ���   ����¶��   �����Ӷ�   ���������ض�   ����������ض   ����ض��   ����������������Ҷ��   �����϶�    �����������������������������Ŷ�   �����¶�   ���������������Ӷ���   ���������Ӷ�   ��������Ķ��   �����Ӷ�   ���������������Ŷ���   �����������Ŷ���   �����������������Ӷ�   �����������Ӷ���   ��Ŷ   �������������Ӷ�   ����������Ӷ   ����������������Ҷ��   ��������������Ӷ   ����������Ӷ   ��������������������Ŷ��   ���������������϶���   d         PlayerVerification        Combat        Server started        peer_connected        _Peer_Connected       peer_disconnected         _Peer_Disconnected        User           is connected          is disconnected             DespawnPlayer            @               Expected Token:    
   FetchToken        ReturnTokenVerificationResults              SpawnNewPlayer        ask for damage data       ReturnSkillDamage         sending    	   to player         ReturnPlayerStats         T         ReceiveWorldState         ReturnServerTime      ReturnLatency                                              %   	   &   
   ,      -      3      4      :      >      ?      E      P      Y      ^      _      j      u      v      }      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4   #  5   (  6   -  7   .  8   5  9   6  :   =  ;   >  <   F  =   G  >   R  ?   [  @   \  A   e  B   f  C   o  D   u  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W     X   	  Y     Z     [      \   #  ]   $  ^   +  _   ,  `   3  a   4  b   =  c   >  d   F  e   G  f   R  g   a  h   b  i   j  j   k  k   v  l     m   �  n   �  o   �  p   �  q   �  r   Y3YY;�  �  T�  PQY;�  YY5;�  �  P�  QY5;�  �  P�  QYY;�  LMYY;�	  NOYY0�
  PQV�  �  PQYY0�  PQV�  �  T�  P�  T�  R�  Q�  �  PQT�  P�  Q�  �?  P�  QY�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  QYY0�  P�  QV�  �?  P�  �>  P�  Q�	  Q�  �  �  T�  P�  QYY0�  P�  QV�  �?  P�  �>  P�  Q�
  Q�  &�  P�>  P�  QQV�  �  �  P�>  P�  QQT�  PQ�  �  �	  T�  P�  Q�  �  P�  R�  R�  QYYYY0�  PQV�  �  ;�  �  T�  PQ�  ;�  �  &�  LMV�  -�  (V�  )�  �K  P�  T�   PQ�  R�  R�  QV�  �  �  P�  L�  MT�!  P�  QQ�  �  &�  �  �  V�  �  T�"  P�  Q�  �?  P�  Q�  �?  P�  QYY0�#  P�  QV�  �  �  P�  R�  QYYD0�$  P�%  QV�  �  ;�  �  PQT�&  PQ�  �  T�'  P�  R�%  QYY0�(  P�  R�)  QV�  �  �  P�  R�  R�)  Q�  &�)  �  V�  �  P�  R�  R�  R�  PQQYYD0�*  P�+  R�,  QV�  �?  P�  Q�  �  ;�  �  PQT�&  PQ�  �  ;�-  �  T�*  P�+  R�  Q�  �  P�  R�  R�-  R�,  Q�  �?  P�  �>  P�-  Q�  QYYD0�.  PQV�  ;�  �  PQT�&  PQ�  ;�/  �  P�>  P�  QQT�/  �  �  P�  R�  R�/  Q�  YD0�0  P�1  QV�  ;�  �  PQT�&  PQ�  &�	  T�2  P�  QV�  �  &�	  L�  ML�  M	�1  L�  MV�  �  �	  L�  M�1  �  (V�  �  �	  L�  M�1  �  Y0�3  P�4  QV�  �  �5  P�  R�  R�4  Q�  YD0�6  P�7  QV�  �  ;�  �  PQT�&  PQ�  �  P�  R�  R�  T�8  PQR�7  Q�  YD0�9  P�7  QV�  �  ;�  �  PQT�&  PQ�  �  P�  R�  R�7  Q�  �  �  �  �  Y`              [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scenes/Main/Server.gd" type="Script" id=1]
[ext_resource path="res://Scripts/Combat.gd" type="Script" id=2]
[ext_resource path="res://Scripts/PlayerVerification.gd" type="Script" id=3]
[ext_resource path="res://Scenes/Singletons/StateProcessing.tscn" type="PackedScene" id=4]

[node name="Server" type="Node"]
script = ExtResource( 1 )

[node name="PlayerVerification" type="Node" parent="."]
script = ExtResource( 3 )

[node name="VerificationExpiration" type="Timer" parent="PlayerVerification"]

[node name="Combat" type="Node" parent="."]
script = ExtResource( 2 )

[node name="TokenExpiration" type="Timer" parent="."]
wait_time = 10.0
autostart = true

[node name="StateProcessing" parent="." instance=ExtResource( 4 )]
[connection signal="timeout" from="PlayerVerification/VerificationExpiration" to="PlayerVerification" method="_on_VerificationExpiration_timeout"]
[connection signal="timeout" from="TokenExpiration" to="." method="_on_TokenExpiration_timeout"]
          GDSC   #      7        ���Ӷ���   ������ݶ   �����������������������¶���   ����   ����������߶   ����������������   �ƶ�   ���¶���   ����������¶   ���������Ķ�   �������Ӷ���   �����϶�   �������¶���   �嶶   ���������������Ŷ���   ���Ŷ���   ����¶��   ��������������Ķ   �������Ŷ���   ����׶��   ���������������������Ķ�   �����������������Ķ�   ���������������Ķ���   ���ڶ���   ������������¶��   ���������������������Ķ�   ������������Ӷ��   ���������������Ķ���   ������¶   ������������������Ҷ   ���������������������Ҷ�   ����������������ض��   ����ض��   ��������������Ŷ   �����Ҷ�   	   127.0.0.1      x     u        /root/Server      :         --ip            --port1       --port2           connection_failed         _OnConnectionFailed       connection_succeeded      _OnConnectionSucceeded     $   Failed to connect to game server hub   (   Succesfully connected to game server hub                                           !   	   &   
   '      0      1      2      8      B      L      R      Y      _      i      o      y      }      ~      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7     8   YY3YY;�  �  T�  PQY;�  �  T�  PQY;�  Y;�  �  Y;�  �  YY5;�	  �
  P�  QYYY0�  PQV�  )�  �  T�  PQV�  ;�  �  T�  P�  Q�  &�  �  V�  �  �  L�  M�  &�  �  V�  �  �  P�  L�  MQ�  &�  �  V�  �  �  P�  L�  MQ�  �  PQYY0�  P�  QV�  �  &�  PQ�	  V�  .�  �  &�  T�  PQV�  .�  �  �  T�  PQSYY0�  PQV�  �  T�  P�  R�  Q�  �  P�  Q�  �  T�  PQ�  �  T�  P�  Q�  �  �  T�  P�
  RR�  Q�  �  T�  P�  RR�  QYY0�  PQV�  �  �?  P�  Q�  YYY0�  PQV�  �?  P�  Q�  YYD0�  P�   QV�  �	  T�!  T�"  P�   QY`        GDSC            V      ���Ӷ���   ���������׶�   ��������׶��   �����϶�   ��������������Ӷ   ���Ӷ���   ����   ���ض���   ���򶶶�   ��������������ض   ��������   ����Ӷ��   ����������¶   ����Ӷ��   �����¶�      Stats         Strenght   *         Vitality   D         res://Data/DataSheet.json                                                 	      
                     %      .      9      G      M      S      T      YY3YY;�  Y;�  N�  VN�  �  V�  R�  �  V�  �  OYOYY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  R�  T�  Q�  ;�	  �
  T�  P�  T�  PQQ�  �  T�  PQ�  �  �	  T�  YY`    GDSC            Z      ���Ӷ���   ����������Ӷ   ���������������Ŷ���   ����׶��   ���������¶�   ����������������������ض   ����϶��   ��������Ӷ��   �����Ķ�   ���Ŷ���   ����Ӷ��   �嶶   ��������������������Ŷ��   �������������Ӷ�            T                            
                            	   !   
   .      8      9      C      D      O      X      3YYY;�  NOYY0�  P�  QV�  �  &�  PQT�  T�  PQV�  �  �  �  PQT�  T�  PQ�  )�  �  T�	  PQV�  �  �  L�  MT�
  P�  Q�  �  �  L�  M�  T�  PQ�  �  PQT�  P�  QY`        [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Singletons/StateProcessing.gd" type="Script" id=1]

[node name="StateProcessing" type="Node"]
script = ExtResource( 1 )
     GDSC                   ���Ӷ���   ���������������Ӷ���   ���������Ӷ�   ��������Ҷ��   �����Ӷ�   ���������׶�   ���������׶�   �����Ӷ�                                           YY3YY0�  P�  R�  QV�  ;�  �  T�  L�  MT�  �  .�  Y`    GDSC             
      ���Ӷ���   �����������Ŷ���                               YY3YY;�  Y`   GDSC   *   
   C        ���Ӷ���   �������������Ӷ�   ���������¶�   ���������������������Ӷ�   ��������������������ض��   ����¶��   ��������Ҷ��   �嶶   ������������Ӷ��   ���������ض�   �����϶�   ����ض��   �����������������ض�   ����¶��   ��������������Ŷ   ��Ŷ   ��������������������Ķ��   ����Ӷ��   �������Ӷ���   �����������Ķ���    �����������������������������Ŷ�   ������ݶ   ��������������Ķ$   ���������������������������������¶�   �����������Ӷ���   ���������Ӷ�   ��϶   ���Ŷ���   ��������ƶ��   ��������������Ŷ   ��������������������������Ŷ   �������������������Ķ���   �������Ӷ���   ���Ӷ���   ��������Ҷ��   ���������������Ķ���   �������Ӷ���   ������������������Ķ   �����������Ŷ���   ���������׶�   ��������׶��   ����Ŷ��   .   res://../Scenes/Instances/PlayerContainer.tscn     	   Timestamp             @                           timeout       Awaiting verification         ../                                               	   $   
   %      4      ;      <      =      >      G      H      M      a      l      p      u      |      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0   #  1   (  2   -  3   .  4   /  5   0  6   7  7   8  8   A  9   B  :   K  ;   L  <   W  =   d  >   e  ?   j  @   k  A   r  B   s  C   }  D   Y3YY5;�  �  PQY5;�  ?PQYY;�  NOYY0�  P�  QV�  �  �  L�  MN�  V�  T�  PQO�  �  T�	  P�  Q�  YYY0�
  P�  R�  QV�  �  ;�  �  �  *�  T�  PQ�  P�  T�  P�  QQ
�  V�  &�  T�  T�  P�  QV�  �  �  �  �  P�  Q�  �  T�  P�  Q�  �  T�  T�  P�  Q�  +�  (V�  �  AP�  PQT�  P�  QR�  Q�  �  T�  P�  R�  Q�  &�  �  V�  �  �  T�  P�  Q�  �  T�  T�  P�  QYY0�  PQV�  ;�  �  T�  PQ�  ;�  �  &�  NOV�  -�  (V�  )�  �  T�  PQV�  �  �  L�  MT�  �  &�  �  �  V�  �  T�  P�  Q�  ;�  �  P�  PQT�  PQQ�  &�  T�  P�  QV�  �  T�  P�  R�  Q�  �  T�  T�  P�  Q�  �?  P�  Q�  �?  P�  QYYYY0�  P�  QV�  �  ;�  �  T�   PQ�  �  �  T�!  �>  P�  Q�  �  �  PQT�"  P�  R�  Q�  ;�#  �$  P�	  �>  P�  QQ�  �  �%  P�#  QYY0�%  P�#  QV�  �  �#  T�&  �'  T�(  T�)  Y`               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scenes/Main/Server.gdc"
   [remap]

path="res://Scenes/Singletons/HubConnection.gdc"
      [remap]

path="res://Scenes/Singletons/ServerData.gdc"
         [remap]

path="res://Scenes/Singletons/StateProcessing.gdc"
    [remap]

path="res://Scripts/Combat.gdc"
       [remap]

path="res://Scripts/PlayerContainer.gdc"
              [remap]

path="res://Scripts/PlayerVerification.gdc"
           �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG	      _global_script_classes             _global_script_class_icons             application/config/name      	   Server_v0      application/run/main_scene(         res://Scenes/Main/Server.tscn      application/config/icon         res://icon.png     autoload/ServerData0      &   *res://Scenes/Singletons/ServerData.gd     autoload/HubConnection4      )   *res://Scenes/Singletons/HubConnection.gd      physics/common/physics_fps         )   rendering/environment/default_environment          res://default_env.tres              