require 'windows/api'
include Windows

# I don't use the Boolean flag for the return types of these methods because
# they succeed, not fail, if the return value is 0.
#
module Windows
   module NetworkManagement
      API.auto_namespace = 'Windows::NetworkManagement'
      API.auto_constant  = true
      API.auto_method    = false
      API.auto_unicode   = false

      NERR_Success         = 0
      MAX_PREFERRED_LENGTH = -1

      # Taken from LMServer.h
      SV_TYPE_WORKSTATION       = 0x00000001
      SV_TYPE_SERVER            = 0x00000002
      SV_TYPE_SQLSERVER         = 0x00000004
      SV_TYPE_DOMAIN_CTRL       = 0x00000008
      SV_TYPE_DOMAIN_BAKCTRL    = 0x00000010
      SV_TYPE_TIME_SOURCE       = 0x00000020
      SV_TYPE_AFP               = 0x00000040
      SV_TYPE_NOVELL            = 0x00000080
      SV_TYPE_DOMAIN_MEMBER     = 0x00000100
      SV_TYPE_PRINTQ_SERVER     = 0x00000200
      SV_TYPE_DIALIN_SERVER     = 0x00000400
      SV_TYPE_XENIX_SERVER      = 0x00000800
      SV_TYPE_SERVER_UNIX       = SV_TYPE_XENIX_SERVER
      SV_TYPE_NT                = 0x00001000
      SV_TYPE_WFW               = 0x00002000
      SV_TYPE_SERVER_MFPN       = 0x00004000
      SV_TYPE_SERVER_NT         = 0x00008000
      SV_TYPE_POTENTIAL_BROWSER = 0x00010000
      SV_TYPE_BACKUP_BROWSER    = 0x00020000
      SV_TYPE_MASTER_BROWSER    = 0x00040000
      SV_TYPE_DOMAIN_MASTER     = 0x00080000
      SV_TYPE_SERVER_OSF        = 0x00100000
      SV_TYPE_SERVER_VMS        = 0x00200000
      SV_TYPE_WINDOWS           = 0x00400000
      SV_TYPE_DFS               = 0x00800000
      SV_TYPE_CLUSTER_NT        = 0x01000000
      SV_TYPE_TERMINALSERVER    = 0x02000000
      SV_TYPE_CLUSTER_VS_NT     = 0x04000000
      SV_TYPE_DCE               = 0x10000000
      SV_TYPE_ALTERNATE_XPORT   = 0x20000000
      SV_TYPE_LOCAL_LIST_ONLY   = 0x40000000
      SV_TYPE_DOMAIN_ENUM       = 0x80000000
      SV_TYPE_ALL               = 0xFFFFFFFF

      API.new('NetAlertRaise', 'PPL', 'L', 'netapi32')
      API.new('NetAlertRaiseEx', 'PPLP', 'L', 'netapi32')
      API.new('NetApiBufferAllocate', 'LP', 'L', 'netapi32')
      API.new('NetApiBufferFree', 'P', 'L', 'netapi32')
      API.new('NetApiBufferReallocate', 'PLP', 'L', 'netapi32')
      API.new('NetApiBufferSize', 'PP', 'L', 'netapi32')
      API.new('NetGetAnyDCName', 'PPP', 'L', 'netapi32')
      API.new('NetGetDCName', 'PPP', 'L', 'netapi32')
      API.new('NetGetDisplayInformationIndex', 'PLPP', 'L', 'netapi32')
      API.new('NetGetJoinableOUs', 'PPPPPP', 'L', 'netapi32')
      API.new('NetGetJoinInformation', 'PPP', 'L', 'netapi32')
      API.new('NetGroupAdd', 'PLPP', 'L', 'netapi32')
      API.new('NetGroupAddUser', 'PPP', 'L', 'netapi32')
      API.new('NetGroupDel', 'PP', 'L', 'netapi32')
      API.new('NetGroupDelUser', 'PPP', 'L', 'netapi32')
      API.new('NetGroupEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetGroupGetInfo', 'PPLP', 'L', 'netapi32')
      API.new('NetGroupGetUsers', 'PPLPLPPP', 'L', 'netapi32')
      API.new('NetGroupSetInfo', 'PPLPP', 'L', 'netapi32')
      API.new('NetGroupSetUsers', 'PPLPL', 'L', 'netapi32')
      API.new('NetJoinDomain', 'PPPPPL', 'L', 'netapi32')
      API.new('NetLocalGroupAdd', 'PLPP', 'L', 'netapi32')
      API.new('NetLocalGroupAddMembers', 'PPLPL', 'L', 'netapi32')
      API.new('NetLocalGroupDel', 'PP', 'L', 'netapi32')
      API.new('NetLocalGroupDelMembers', 'PPLPL', 'L', 'netapi32')
      API.new('NetLocalGroupEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetLocalGroupGetInfo', 'PPLP', 'L', 'netapi32')
      API.new('NetLocalGroupGetMembers', 'PPLPLPPP', 'L', 'netapi32')
      API.new('NetLocalGroupSetInfo', 'PPLPP', 'L', 'netapi32')
      API.new('NetLocalGroupSetMembers', 'PPLPP', 'L', 'netapi32')
      API.new('NetMessageBufferSend', 'PPPPL', 'L', 'netapi32')
      API.new('NetMessageNameAdd', 'PP', 'L', 'netapi32')
      API.new('NetMessageNameDel', 'PP', 'L', 'netapi32')
      API.new('NetMessageNameEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetMessageNameGetInfo', 'PPLP', 'L', 'netapi32')
      API.new('NetQueryDisplayInformation', 'PLLLLPP', 'L', 'netapi32')
      API.new('NetRemoteComputerSupports', 'PLP', 'L', 'netapi32')
      API.new('NetRemoteTOD', 'PP', 'L', 'netapi32')
      API.new('NetRenameMachineInDomain', 'PPPPL', 'L', 'netapi32')
      API.new('NetScheduleJobAdd', 'PPP', 'L', 'netapi32')
      API.new('NetScheduleJobDel', 'PLL', 'L', 'netapi32')
      API.new('NetScheduleJobEnum', 'PPLPPP', 'L', 'netapi32')
      API.new('NetScheduleJobGetInfo', 'PLP', 'L', 'netapi32')
      API.new('NetServerComputerNameAdd', 'PPP', 'L', 'netapi32')
      API.new('NetServerComputerNameDel', 'PP', 'L', 'netapi32')
      API.new('NetServerDiskEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetServerEnum', 'PLPLPPLPP', 'L', 'netapi32')
      API.new('NetServerGetInfo', 'PLP', 'L', 'netapi32')
      API.new('NetServerSetInfo', 'PLPP', 'L', 'netapi32')
      API.new('NetServerTransportAdd', 'PLP', 'L', 'netapi32')
      API.new('NetServerTransportAddEx', 'PLP', 'L', 'netapi32')
      API.new('NetServerTransportDel', 'PLP', 'L', 'netapi32')
      API.new('NetServerTransportEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetUnjoinDomain', 'PPPL', 'L', 'netapi32')
      API.new('NetUseAdd', 'PLPP', 'L', 'netapi32')
      API.new('NetUseDel', 'PPL', 'L', 'netapi32')
      API.new('NetUseEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetUseGetInfo', 'PPLP', 'L', 'netapi32')
      API.new('NetUserAdd', 'PLPP', 'L', 'netapi32')
      API.new('NetUserChangePassword', 'PPPP', 'L', 'netapi32')
      API.new('NetUserDel', 'PP', 'L', 'netapi32')
      API.new('NetUserEnum', 'PLLPLPPP', 'L', 'netapi32')
      API.new('NetUserGetGroups', 'PPLPLPP', 'L', 'netapi32')
      API.new('NetUserGetInfo', 'PPLP', 'L', 'netapi32')
      API.new('NetUserGetLocalGroups', 'PPLLPLPP', 'L', 'netapi32')
      API.new('NetUserModalsGet', 'PLP', 'L', 'netapi32')
      API.new('NetUserModalsSet', 'PLPP', 'L', 'netapi32')
      API.new('NetUserSetGroups', 'PPLPL', 'L', 'netapi32')
      API.new('NetUserSetInfo', 'PPLPP', 'L', 'netapi32')
      API.new('NetValidateName', 'PPPPP', 'L', 'netapi32')
      API.new('NetWkstaGetInfo', 'PLP', 'L', 'netapi32')
      API.new('NetWkstaSetInfo', 'PLPP', 'L', 'netapi32')
      API.new('NetWkstaTransportAdd', 'PLPP', 'L', 'netapi32')
      API.new('NetWkstaTransportDel', 'PPL', 'L', 'netapi32')
      API.new('NetWkstaTransportEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetWkstaUserEnum', 'PLPLPPP', 'L', 'netapi32')
      API.new('NetWkstaUserGetInfo', 'PLP', 'L', 'netapi32')
      API.new('NetWkstaUserSetInfo', 'PPLP', 'L', 'netapi32')

      # Windows XP or later.
      begin 
         API.new('GetNetScheduleAccountInformation', 'PLP', 'L', 'mstask')
         API.new('SetNetScheduleAccountInformation', 'PPP', 'L', 'netapi32')
      rescue Exception
         # Do nothing.  Not supported on current platform.
      end

      def NetAlertRaise(name, buf, bufsize)
         NetAlertRaise.call(name, buf, bufsize) == NERR_Success
      end

      def NetAlertRaiseEx(name, data, size, service)
         NetAlertRaiseEx.call(name, data, size, service) == NERR_Success
      end

      def NetApiBufferAllocate(num_bytes, buf)
         NetApiBufferAllocate.call(num_bytes, buf) == NERR_Success
      end

      def NetApiBufferFree(buf)
         NetApiBufferFree.call(buf) == NERR_Success
      end

      def NetApiBufferReallocate(old_buf, count, new_buf)
         NetApiBufferReallocate.call(old_buf, count, new_buf) == NERR_Success
      end

      def NetApiBufferSize(buf, count)
         NetApiBufferSize.call(buf, count) == NERR_Success
      end

      def NetGetAnyDCName(server, domain, buf)
         NetGetAnyDCName.call(server, domain, buf) == NERR_Success
      end

      def NetGetDCName(server, domain, buf)
         NetGetDCName.call(server, domain, buf) == NERR_Success
      end

      def NetGetDisplayInformationIndex(server, level, prefix, index)
         NetGetDisplayInformationIndex.call(server, level, prefix, index) == NERR_Success
      end

      def NetGetJoinableOUs(server, domain, account, password, count, ous)
         NetGetJoinableOUs.call(server, domain, account, password, count, ous) == NERR_Success
      end

      def NetGetJoinInformation(server, buf, buf_type)
         NetGetJoinInformation.call(server, buf, buf_type) == NERR_Success
      end

      def NetGroupAdd(server, level, buf, err)
         NetGroupAdd.call(server, level, buf, err).call == NERR_Success
      end

      def NetGroupAddUser(server, group, user)
         NetGroupAddUser.call(server, group, user) == NERR_Success
      end

      def NetGroupDel(server, group)
         NetGroupDel.call(server, group) == NERR_Success
      end

      def NetGroupDelUser(server, group, user)
         NetGroupDelUser.call(server, group, user) == NERR_Success
      end

      def NetGroupEnum(server, level, buf, max, entries, total_entries, resume)
         NetGroupEnum.call(server, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetGroupGetInfo(server, group, level, buf)
         NetGroupGetInfo.call(server, group, level, buf) == NERR_Success
      end

      def NetGroupGetUsers(server, group, level, buf, max, entries, total_entries, resume)
         NetGroupGetUsers.call(server, group, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetGroupSetInfo(server, group, level, buf, err)
         NetGroupSetInfo.call(server, group, level, buf, err) == NERR_Success
      end

      def NetGroupSetUsers(server, group, level, buf, total)
         NetGroupSetUsers.call(server, group, level, buf, total) == NERR_Success
      end

      def NetJoinDomain(server, domain, account_ou, account, password, opts)
         NetJoinDomain.call(server, domain, account_ou, account, password, opts) == NERR_Success
      end

      def NetLocalGroupAdd(server, level, buf, err)
         NetLocalGroupAdd.call(server, level, buf, err) == NERR_Success
      end

      def NetLocalGroupAddMembers(server, group, level, buf, total)
         NetLocalGroupAddMembers.call(server, group, level, buf, total) == NERR_Success
      end

      def NetLocalGroupDel(server, group)
         NetLocalGroupDel.call(server, group) == NERR_Success
      end

      def NetLocalGroupDelMembers(server, group, level, buf, total)
         NetLocalGroupDelMembers.call(server, group, level, buf, total) == NERR_Success
      end

      def NetLocalGroupEnum(server, level, buf, max, entries, total_entries, resume)
         NetLocalGroupEnum.call(server, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetLocalGroupGetInfo(server, group, level, buf)
         NetLocalGroupGetInfo.call(server, group, level, buf) == NERR_Success
      end

      def NetLocalGroupGetMembers(server, group, level, buf, max, entries, total_entries, resume)
         NetLocalGroupGetMembers.call(server, group, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetLocalGroupSetInfo(server, group, level, buf, err)
         NetLocalGroupSetInfo.call(server, group, level, buf, err) == NERR_Success
      end

      def NetLocalGroupSetMembers(server, group, level, buf, total)
         NetLocalGroupSetMembers.call(server, group, level, buf, total) == NERR_Success
      end

      def NetMessageBufferSend(server, msg, from, buf, bufsize)
         NetMessageBufferSend.call(server, msg, from, buf, bufsize) == NERR_Success
      end

      def NetMessageNameAdd(server, msg)
         NetMessageNameAdd.call(server, msg) == NERR_Success
      end

      def NetMessageNameDel(server, msg)
         NetMessageNameDel.call(server, msg) == NERR_Success
      end

      def NetMessageNameEnum(server, level, buf, max, entries, total_entries, resume)
         NetMessageNameEnum.call(server, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetMessageNameGetInfo(server, msg, level, buf)
         NetMessageNameGetInfo.call(server, msg, level, buf) == NERR_Success
      end

      def NetQueryDisplayInformation(server, level, index, entries, max, count, buf)
         NetQueryDisplayInformation.call(server, level, index, entries, max, count, buf) == NERR_Success
      end

      def NetRemoteComputerSupports(server, level, index, entries, max, count, buf)
         NetRemoteComputerSupports.call(server, level, index, entries, max, count, buf) == NERR_Success
      end

      def NetRemoteTOD(server, buf)
         NetRemoteTOD.call(server, buf) == NERR_Success
      end

      def NetRenameMachineInDomain(server, machine, account, password, options)
         NetRenameMachineInDomain.call(server, machine, account, password, options) == NERR_Success
      end

      def NetScheduleJobAdd(server, buf, job)
         NetScheduleJobAdd.call(server, buf, job) == NERR_Success
      end
      
      def NetScheduleJobDel(server, min, max)
         NetScheduleJobDel.call(server, min, max) == NERR_Success
      end

      def NetScheduleJobEnum(server, buf, max, entries, total_entries, resume)
         NetScheduleJobEnum.call(server, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetScheduleJobGetInfo(server, job, buf)
         NetScheduleJobGetInfo.call(server, job, buf) == NERR_Success
      end

      def NetServerComputerNameAdd(server, em_domain, em_server)
         NetServerComputerNameAdd.call(server, em_domain, em_server) == NERR_Success
      end

      def NetServerComputerNameDel(server, em_server)
         NetServerComputerNameDel.call(server, em_server) == NERR_Success
      end

      def NetServerDiskEnum(server, level, buf, maxlen, entries, total_entries, resume)
         NetServerDiskEnum.call(server, level, buf, maxlen, entries, total_entries, resume) == NERR_Success
      end

      def NetServerEnum(server, level, ptr, maxlen, num, total, stype, domain, handle)
         NetServerEnum.call(server, level, ptr, maxlen, num, total, stype, domain, handle) == NERR_Success
      end

      def NetServerGetInfo(server, level, buf)
         NetServerGetInfo.call(server, level, buf) == NERR_Success
      end

      def NetServerSetInfo(server, level, buf, error)
         NetServerSetInfo.call(server, level, buf, error) == NERR_Success
      end

      def NetServerTransportAdd(server, level, buf)
         NetServerTransportAdd.call(server, level, buf) == NERR_Success
      end

      def NetServerTransportAddEx(server, level, buf)
         NetServerTransportAddEx.call(server, level, buf) == NERR_Success
      end

      def NetServerTransportDel(server, level, buf)
         NetServerTransportDel.call(server, level, buf) == NERR_Success
      end

      def NetServerTransportEnum(server, level, buf, maxlen, entries, total_entries, resume)
         NetServerTransportEnum.call(server, level, buf, maxlen, entries, total_entries, resume) == NERR_Success
      end

      def NetUnjoinDomain(server, account, password, options)
         NetUnjoinDomain.call(server, account, password, options) == NERR_Success
      end

      def NetUseAdd(server, level, buf, error)
         NetUseAdd.call(server, level, buf, error) == NERR_Success
      end

      def NetUseDel(server, name, conn)
         NetUseDel.call(server, name, conn) == NERR_Success
      end

      def NetUseEnum(server, level, buf, max, entries, total_entries, resume)
         NetUseEnum.call(server, level, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetUseGetInfo(server, name, level, buf)
         NetUseGetInfo.call(server, name, level, buf) == NERR_Success
      end

      def NetUserAdd(server, level, buf, error)
         NetUserAdd.call(server, level, buf, error) == NERR_Success
      end

      def NetUserChangePassword(domain, user, old, new)
         NetUserChangePassword.call(domain, user, old, new) == NERR_Success
      end

      def NetUserDel(server, user)
         NetUserDel.call(server, user) == NERR_Success
      end

      def NetUserEnum(server, level, filter, buf, max, entries, total_entries, resume)
         NetUserEnum.call(server, level, filter, buf, max, entries, total_entries, resume) == NERR_Success
      end

      def NetUserGetGroups(server, user, level, buf, max, entries, total_entries)
         NetUserGetGroups.call(server, user, level, buf, max, entries, total_entries) == NERR_Success
      end

      def NetUserGetInfo(server, user, level, buf)
         NetUserGetInfo.call(server, user, level, buf) == NERR_Success
      end

      def NetUserGetLocalGroups(server, user, level, flags, buf, max, entries, total_entries)
         NetUserGetLocalGroups.call(server, user, level, flags, buf, max, entries, total_entries) == NERR_Success
      end

      def NetUserModalsGet(server, level, buf)
         NetUserModalsGet.call(server, level, buf) == NERR_Success
      end

      def NetUserModalsSet(server, level, buf, error)
         NetUserModalsSet.call(server, level, buf, error) == NERR_Success
      end

      def NetUserSetGroups(server, user, level, buf, num)
         NetUserSetGroups.call(server, user, level, buf, num) == NERR_Success
      end

      def NetUserSetInfo(server, user, level, buf, error)
         NetUserSetInfo.call(server, user, level, buf, error) == NERR_Success
      end

      def NetValidateName(server, name, account, password, name_type)
         NetValidateName.call(server, name, account, password, name_type) == NERR_Success
      end

      def NetWkstaGetInfo(server, level, buf)
         NetWkstaGetInfo.call(server, level, buf) == NERR_Success
      end

      def NetWkstaSetInfo(server, level, buf, error)
         NetWkstaSetInfo.call(server, level, buf, error) == NERR_Success
      end

      def NetWkstaTransportAdd(server, level, buf, error)
         NetWkstaTransportAdd.call(server, level, buf, error) == NERR_Success
      end

      def NetWkstaTransportDel(server, name, cond)
         NetWkstaTransportDel.call(server, name, cond) == NERR_Success
      end

      def NetWkstaTransportEnum(server, level, buf, maxlen, entries, total_entries, resume)
         NetWkstaTransportEnum.call(server, level, buf, maxlen, entries, total_entries, resume) == NERR_Success
      end

      def NetWkstaUserEnum(server, level, buf, maxlen, entries, total_entries, resume)
         NetWkstaUserEnum.call(server, level, buf, maxlen, entries, total_entries, resume) == NERR_Success
      end

      def NetWkstaUserGetInfo(res, level, buf)
         NetWkstaUserGetInfo.call(res, level, buf) == NERR_Success
      end

      def NetWkstaUserSetInfo(res, level, buf, error)
         NetWkstaUserSetInfo.call(res, level, buf, error) == NERR_Success
      end

      # Windows XP or later
      begin
         def GetNetScheduleAccountInformation(server, num_chars, chars)
            GetNetScheduleAccountInformation.call(server, num_chars, chars) == NERR_Success
         end

         def SetNetScheduleAccountInformation(server, account, password)
            SetNetScheduleAccountInformation.call(server, account, password) == NERR_Success
         end
      rescue Exception
      end
   end
end
