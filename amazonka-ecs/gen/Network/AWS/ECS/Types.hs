{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types
    (
    -- * Service Configuration
      ecs

    -- * Errors
    , _AccessDeniedException
    , _InvalidParameterException
    , _ServerException
    , _ClusterContainsTasksException
    , _PlatformUnknownException
    , _ClusterContainsServicesException
    , _ClusterContainsContainerInstancesException
    , _ServiceNotActiveException
    , _ClusterNotFoundException
    , _NoUpdateAvailableException
    , _UnsupportedFeatureException
    , _ServiceNotFoundException
    , _PlatformTaskDefinitionIncompatibilityException
    , _MissingVersionException
    , _UpdateInProgressException
    , _BlockedException
    , _TargetNotFoundException
    , _AttributeLimitExceededException
    , _ClientException
    , _ResourceNotFoundException

    -- * AgentUpdateStatus
    , AgentUpdateStatus (..)

    -- * AssignPublicIP
    , AssignPublicIP (..)

    -- * ClusterField
    , ClusterField (..)

    -- * Compatibility
    , Compatibility (..)

    -- * Connectivity
    , Connectivity (..)

    -- * ContainerCondition
    , ContainerCondition (..)

    -- * ContainerInstanceField
    , ContainerInstanceField (..)

    -- * ContainerInstanceStatus
    , ContainerInstanceStatus (..)

    -- * DeploymentControllerType
    , DeploymentControllerType (..)

    -- * DesiredStatus
    , DesiredStatus (..)

    -- * DeviceCgroupPermission
    , DeviceCgroupPermission (..)

    -- * HealthStatus
    , HealthStatus (..)

    -- * IPcMode
    , IPcMode (..)

    -- * LaunchType
    , LaunchType (..)

    -- * LogDriver
    , LogDriver (..)

    -- * NetworkMode
    , NetworkMode (..)

    -- * PidMode
    , PidMode (..)

    -- * PlacementConstraintType
    , PlacementConstraintType (..)

    -- * PlacementStrategyType
    , PlacementStrategyType (..)

    -- * PlatformDeviceType
    , PlatformDeviceType (..)

    -- * PropagateTags
    , PropagateTags (..)

    -- * ProxyConfigurationType
    , ProxyConfigurationType (..)

    -- * ResourceType
    , ResourceType (..)

    -- * ScaleUnit
    , ScaleUnit (..)

    -- * SchedulingStrategy
    , SchedulingStrategy (..)

    -- * Scope
    , Scope (..)

    -- * ServiceField
    , ServiceField (..)

    -- * SettingName
    , SettingName (..)

    -- * SortOrder
    , SortOrder (..)

    -- * StabilityStatus
    , StabilityStatus (..)

    -- * TargetType
    , TargetType (..)

    -- * TaskDefinitionFamilyStatus
    , TaskDefinitionFamilyStatus (..)

    -- * TaskDefinitionField
    , TaskDefinitionField (..)

    -- * TaskDefinitionPlacementConstraintType
    , TaskDefinitionPlacementConstraintType (..)

    -- * TaskDefinitionStatus
    , TaskDefinitionStatus (..)

    -- * TaskField
    , TaskField (..)

    -- * TaskStopCode
    , TaskStopCode (..)

    -- * TransportProtocol
    , TransportProtocol (..)

    -- * UlimitName
    , UlimitName (..)

    -- * AWSVPCConfiguration
    , AWSVPCConfiguration
    , awsVPCConfiguration
    , avcSecurityGroups
    , avcAssignPublicIP
    , avcSubnets

    -- * Attachment
    , Attachment
    , attachment
    , aStatus
    , aDetails
    , aId
    , aType

    -- * AttachmentStateChange
    , AttachmentStateChange
    , attachmentStateChange
    , ascAttachmentARN
    , ascStatus

    -- * Attribute
    , Attribute
    , attribute
    , aTargetId
    , aValue
    , aTargetType
    , aName

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cClusterARN
    , cRunningTasksCount
    , cRegisteredContainerInstancesCount
    , cPendingTasksCount
    , cClusterName
    , cStatistics
    , cActiveServicesCount
    , cTags

    -- * Container
    , Container
    , container
    , cGpuIds
    , cNetworkBindings
    , cContainerARN
    , cNetworkInterfaces
    , cTaskARN
    , cLastStatus
    , cMemory
    , cReason
    , cName
    , cExitCode
    , cHealthStatus
    , cCpu
    , cMemoryReservation

    -- * ContainerDefinition
    , ContainerDefinition
    , containerDefinition
    , cdImage
    , cdCommand
    , cdHostname
    , cdRepositoryCredentials
    , cdDockerSecurityOptions
    , cdHealthCheck
    , cdDisableNetworking
    , cdSecrets
    , cdVolumesFrom
    , cdEnvironment
    , cdEntryPoint
    , cdWorkingDirectory
    , cdUlimits
    , cdStopTimeout
    , cdPrivileged
    , cdPortMappings
    , cdResourceRequirements
    , cdDockerLabels
    , cdExtraHosts
    , cdMemory
    , cdSystemControls
    , cdUser
    , cdDnsSearchDomains
    , cdLogConfiguration
    , cdLinuxParameters
    , cdPseudoTerminal
    , cdDependsOn
    , cdName
    , cdDnsServers
    , cdMountPoints
    , cdInteractive
    , cdStartTimeout
    , cdLinks
    , cdReadonlyRootFilesystem
    , cdEssential
    , cdCpu
    , cdMemoryReservation

    -- * ContainerDependency
    , ContainerDependency
    , containerDependency
    , cdContainerName
    , cdCondition

    -- * ContainerInstance
    , ContainerInstance
    , containerInstance
    , ciStatus
    , ciAttachments
    , ciRunningTasksCount
    , ciRemainingResources
    , ciEc2InstanceId
    , ciContainerInstanceARN
    , ciAgentConnected
    , ciVersionInfo
    , ciAgentUpdateStatus
    , ciAttributes
    , ciVersion
    , ciPendingTasksCount
    , ciRegisteredAt
    , ciTags
    , ciRegisteredResources

    -- * ContainerOverride
    , ContainerOverride
    , containerOverride
    , coCommand
    , coEnvironment
    , coResourceRequirements
    , coMemory
    , coName
    , coCpu
    , coMemoryReservation

    -- * ContainerService
    , ContainerService
    , containerService
    , csTaskSets
    , csRunningCount
    , csStatus
    , csClusterARN
    , csPropagateTags
    , csCreatedAt
    , csPlatformVersion
    , csEnableECSManagedTags
    , csCreatedBy
    , csDesiredCount
    , csLoadBalancers
    , csPendingCount
    , csPlacementConstraints
    , csEvents
    , csPlacementStrategy
    , csDeployments
    , csServiceName
    , csDeploymentController
    , csLaunchType
    , csServiceARN
    , csTaskDefinition
    , csSchedulingStrategy
    , csHealthCheckGracePeriodSeconds
    , csNetworkConfiguration
    , csServiceRegistries
    , csTags
    , csRoleARN
    , csDeploymentConfiguration

    -- * ContainerStateChange
    , ContainerStateChange
    , containerStateChange
    , cscNetworkBindings
    , cscStatus
    , cscContainerName
    , cscReason
    , cscExitCode

    -- * Deployment
    , Deployment
    , deployment
    , dRunningCount
    , dStatus
    , dCreatedAt
    , dPlatformVersion
    , dDesiredCount
    , dPendingCount
    , dId
    , dLaunchType
    , dUpdatedAt
    , dTaskDefinition
    , dNetworkConfiguration

    -- * DeploymentConfiguration
    , DeploymentConfiguration
    , deploymentConfiguration
    , dcMinimumHealthyPercent
    , dcMaximumPercent

    -- * DeploymentController
    , DeploymentController
    , deploymentController
    , dcType

    -- * Device
    , Device
    , device
    , dContainerPath
    , dPermissions
    , dHostPath

    -- * DockerVolumeConfiguration
    , DockerVolumeConfiguration
    , dockerVolumeConfiguration
    , dvcDriverOpts
    , dvcDriver
    , dvcScope
    , dvcLabels
    , dvcAutoprovision

    -- * Failure
    , Failure
    , failure
    , fArn
    , fReason

    -- * HealthCheck
    , HealthCheck
    , healthCheck
    , hcStartPeriod
    , hcRetries
    , hcInterval
    , hcTimeout
    , hcCommand

    -- * HostEntry
    , HostEntry
    , hostEntry
    , heHostname
    , heIpAddress

    -- * HostVolumeProperties
    , HostVolumeProperties
    , hostVolumeProperties
    , hvpSourcePath

    -- * KernelCapabilities
    , KernelCapabilities
    , kernelCapabilities
    , kcDrop
    , kcAdd

    -- * KeyValuePair
    , KeyValuePair
    , keyValuePair
    , kvpValue
    , kvpName

    -- * LinuxParameters
    , LinuxParameters
    , linuxParameters
    , lpSharedMemorySize
    , lpInitProcessEnabled
    , lpTmpfs
    , lpDevices
    , lpCapabilities

    -- * LoadBalancer
    , LoadBalancer
    , loadBalancer
    , lbLoadBalancerName
    , lbContainerName
    , lbTargetGroupARN
    , lbContainerPort

    -- * LogConfiguration
    , LogConfiguration
    , logConfiguration
    , lcOptions
    , lcLogDriver

    -- * MountPoint
    , MountPoint
    , mountPoint
    , mpContainerPath
    , mpSourceVolume
    , mpReadOnly

    -- * NetworkBinding
    , NetworkBinding
    , networkBinding
    , nbBindIP
    , nbProtocol
    , nbHostPort
    , nbContainerPort

    -- * NetworkConfiguration
    , NetworkConfiguration
    , networkConfiguration
    , ncAwsvpcConfiguration

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , niIpv6Address
    , niPrivateIPv4Address
    , niAttachmentId

    -- * PlacementConstraint
    , PlacementConstraint
    , placementConstraint
    , pcExpression
    , pcType

    -- * PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psField
    , psType

    -- * PlatformDevice
    , PlatformDevice
    , platformDevice
    , pdId
    , pdType

    -- * PortMapping
    , PortMapping
    , portMapping
    , pmProtocol
    , pmHostPort
    , pmContainerPort

    -- * ProxyConfiguration
    , ProxyConfiguration
    , proxyConfiguration
    , pType
    , pProperties
    , pContainerName

    -- * RepositoryCredentials
    , RepositoryCredentials
    , repositoryCredentials
    , rcCredentialsParameter

    -- * Resource
    , Resource
    , resource
    , rStringSetValue
    , rIntegerValue
    , rDoubleValue
    , rLongValue
    , rName
    , rType

    -- * ResourceRequirement
    , ResourceRequirement
    , resourceRequirement
    , rrValue
    , rrType

    -- * Scale
    , Scale
    , scale
    , sValue
    , sUnit

    -- * Secret
    , Secret
    , secret
    , sName
    , sValueFrom

    -- * ServiceEvent
    , ServiceEvent
    , serviceEvent
    , seCreatedAt
    , seId
    , seMessage

    -- * ServiceRegistry
    , ServiceRegistry
    , serviceRegistry
    , srRegistryARN
    , srContainerName
    , srContainerPort
    , srPort

    -- * Setting
    , Setting
    , setting
    , setValue
    , setName
    , setPrincipalARN

    -- * SystemControl
    , SystemControl
    , systemControl
    , scValue
    , scNamespace

    -- * Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- * Task
    , Task
    , task
    , tStoppedAt
    , tDesiredStatus
    , tOverrides
    , tClusterARN
    , tGroup
    , tAttachments
    , tCreatedAt
    , tStopCode
    , tPlatformVersion
    , tTaskARN
    , tContainerInstanceARN
    , tExecutionStoppedAt
    , tLastStatus
    , tMemory
    , tPullStoppedAt
    , tContainers
    , tStartedAt
    , tVersion
    , tStartedBy
    , tStoppedReason
    , tConnectivity
    , tStoppingAt
    , tLaunchType
    , tTaskDefinitionARN
    , tHealthStatus
    , tConnectivityAt
    , tCpu
    , tPullStartedAt
    , tTags

    -- * TaskDefinition
    , TaskDefinition
    , taskDefinition
    , tdStatus
    , tdExecutionRoleARN
    , tdRequiresCompatibilities
    , tdPidMode
    , tdFamily
    , tdIpcMode
    , tdContainerDefinitions
    , tdMemory
    , tdProxyConfiguration
    , tdTaskRoleARN
    , tdPlacementConstraints
    , tdNetworkMode
    , tdTaskDefinitionARN
    , tdCompatibilities
    , tdRevision
    , tdVolumes
    , tdCpu
    , tdRequiresAttributes

    -- * TaskDefinitionPlacementConstraint
    , TaskDefinitionPlacementConstraint
    , taskDefinitionPlacementConstraint
    , tdpcExpression
    , tdpcType

    -- * TaskOverride
    , TaskOverride
    , taskOverride
    , toContainerOverrides
    , toExecutionRoleARN
    , toTaskRoleARN

    -- * TaskSet
    , TaskSet
    , taskSet
    , tsRunningCount
    , tsStatus
    , tsComputedDesiredCount
    , tsCreatedAt
    , tsPlatformVersion
    , tsScale
    , tsLoadBalancers
    , tsStabilityStatusAt
    , tsPendingCount
    , tsTaskSetARN
    , tsStartedBy
    , tsId
    , tsLaunchType
    , tsUpdatedAt
    , tsTaskDefinition
    , tsExternalId
    , tsNetworkConfiguration
    , tsStabilityStatus

    -- * Tmpfs
    , Tmpfs
    , tmpfs
    , tMountOptions
    , tContainerPath
    , tSize

    -- * Ulimit
    , Ulimit
    , ulimit
    , uName
    , uSoftLimit
    , uHardLimit

    -- * VersionInfo
    , VersionInfo
    , versionInfo
    , viAgentHash
    , viAgentVersion
    , viDockerVersion

    -- * Volume
    , Volume
    , volume
    , vDockerVolumeConfiguration
    , vName
    , vHost

    -- * VolumeFrom
    , VolumeFrom
    , volumeFrom
    , vfSourceContainer
    , vfReadOnly
    ) where

import Network.AWS.ECS.Types.Product
import Network.AWS.ECS.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-11-13@ of the Amazon EC2 Container Service SDK configuration.
ecs :: Service
ecs =
  Service
    { _svcAbbrev = "ECS"
    , _svcSigner = v4
    , _svcPrefix = "ecs"
    , _svcVersion = "2014-11-13"
    , _svcEndpoint = defaultEndpoint ecs
    , _svcTimeout = Just 70
    , _svcCheck = statusSuccess
    , _svcError = parseJSONError "ECS"
    , _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2
        , _retryGrowth = 2
        , _retryAttempts = 5
        , _retryCheck = check
        }
    check e
      | has (hasCode "ThrottledException" . hasStatus 400) e =
        Just "throttled_exception"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has (hasCode "ThrottlingException" . hasStatus 400) e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e = Just "throttling"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has (hasCode "RequestThrottledException" . hasStatus 400) e =
        Just "request_throttled_exception"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 500) e = Just "general_server_error"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | otherwise = Nothing


-- | You do not have authorization to perform the requested action.
--
--
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException = _MatchServiceError ecs "AccessDeniedException"


-- | The specified parameter is invalid. Review the available parameters for the API request.
--
--
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException = _MatchServiceError ecs "InvalidParameterException"


-- | These errors are usually caused by a server issue.
--
--
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException = _MatchServiceError ecs "ServerException"


-- | You cannot delete a cluster that has active tasks.
--
--
_ClusterContainsTasksException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsTasksException =
  _MatchServiceError ecs "ClusterContainsTasksException"


-- | The specified platform version does not exist.
--
--
_PlatformUnknownException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformUnknownException = _MatchServiceError ecs "PlatformUnknownException"


-- | You cannot delete a cluster that contains services. First, update the service to reduce its desired task count to 0 and then delete the service. For more information, see 'UpdateService' and 'DeleteService' .
--
--
_ClusterContainsServicesException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsServicesException =
  _MatchServiceError ecs "ClusterContainsServicesException"


-- | You cannot delete a cluster that has registered container instances. First, deregister the container instances before you can delete the cluster. For more information, see 'DeregisterContainerInstance' .
--
--
_ClusterContainsContainerInstancesException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsContainerInstancesException =
  _MatchServiceError ecs "ClusterContainsContainerInstancesException"


-- | The specified service is not active. You can't update a service that is inactive. If you have previously deleted a service, you can re-create it with 'CreateService' .
--
--
_ServiceNotActiveException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotActiveException = _MatchServiceError ecs "ServiceNotActiveException"


-- | The specified cluster could not be found. You can view your available clusters with 'ListClusters' . Amazon ECS clusters are Region-specific.
--
--
_ClusterNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterNotFoundException = _MatchServiceError ecs "ClusterNotFoundException"


-- | There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.
--
--
_NoUpdateAvailableException :: AsError a => Getting (First ServiceError) a ServiceError
_NoUpdateAvailableException =
  _MatchServiceError ecs "NoUpdateAvailableException"


-- | The specified task is not supported in this Region.
--
--
_UnsupportedFeatureException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedFeatureException =
  _MatchServiceError ecs "UnsupportedFeatureException"


-- | The specified service could not be found. You can view your available services with 'ListServices' . Amazon ECS services are cluster-specific and Region-specific.
--
--
_ServiceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotFoundException = _MatchServiceError ecs "ServiceNotFoundException"


-- | The specified platform version does not satisfy the task definition's required capabilities.
--
--
_PlatformTaskDefinitionIncompatibilityException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformTaskDefinitionIncompatibilityException =
  _MatchServiceError ecs "PlatformTaskDefinitionIncompatibilityException"


-- | Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.
--
--
_MissingVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_MissingVersionException = _MatchServiceError ecs "MissingVersionException"


-- | There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as @PENDING@ or @STAGING@ , the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.
--
--
_UpdateInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_UpdateInProgressException = _MatchServiceError ecs "UpdateInProgressException"


-- | Your AWS account has been blocked. For more information, contact <http://aws.amazon.com/contact-us/ AWS Support> .
--
--
_BlockedException :: AsError a => Getting (First ServiceError) a ServiceError
_BlockedException = _MatchServiceError ecs "BlockedException"


-- | The specified target could not be found. You can view your available container instances with 'ListContainerInstances' . Amazon ECS container instances are cluster-specific and Region-specific.
--
--
_TargetNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetNotFoundException = _MatchServiceError ecs "TargetNotFoundException"


-- | You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with 'ListAttributes' . You can remove existing attributes on a resource with 'DeleteAttributes' .
--
--
_AttributeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AttributeLimitExceededException =
  _MatchServiceError ecs "AttributeLimitExceededException"


-- | These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid.
--
--
_ClientException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientException = _MatchServiceError ecs "ClientException"


-- | The specified resource could not be found.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException = _MatchServiceError ecs "ResourceNotFoundException"

