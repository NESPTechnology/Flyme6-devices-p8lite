.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$1;,
        Lcom/android/internal/telephony/RIL$2;,
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_SEND_ACK:I = 0x3

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final RADIO_SCREEN_OFF:I = 0x0

.field static final RADIO_SCREEN_ON:I = 0x1

.field static final RADIO_SCREEN_UNSET:I = -0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_SOLICITED_ACK:I = 0x2

.field static final RESPONSE_SOLICITED_ACK_EXP:I = 0x3

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RESPONSE_UNSOLICITED_ACK_EXP:I = 0x4

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_RIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private final mBatteryStateListener:Landroid/content/BroadcastReceiver;

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayState:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mInstanceId:Ljava/lang/Integer;

.field mIsDevicePlugged:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field mRadioScreenState:I

.field mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/RIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/RIL;I)Z
    .locals 1
    .param p1, "wakeLockType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/RIL;IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .param p1, "rilVer"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rild"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "rild2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "rild3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 738
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 276
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    .line 277
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 278
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    .line 288
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 289
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 291
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 298
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 302
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 333
    new-instance v7, Lcom/android/internal/telephony/RIL$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 332
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 352
    new-instance v7, Lcom/android/internal/telephony/RIL$2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$2;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RIL(context, preferredNetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 747
    const-string/jumbo v8, " cdmaSubscription="

    .line 746
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 747
    const-string/jumbo v8, ")"

    .line 746
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 750
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 751
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 752
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 753
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 754
    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    .line 756
    const-string/jumbo v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 757
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v7, "RILJ"

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 758
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 759
    const-string/jumbo v7, "RILJ_ACK_WL"

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 760
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 761
    const-string/jumbo v7, "ro.ril.wake_lock_timeout"

    .line 762
    const v8, 0xea60

    .line 761
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 764
    const-string/jumbo v7, "ro.ril.wake_lock_timeout"

    const/16 v8, 0xc8

    .line 763
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    .line 765
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 767
    new-instance v7, Landroid/os/HandlerThread;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RILSender"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 768
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 770
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 771
    .local v4, "looper":Landroid/os/Looper;
    new-instance v7, Lcom/android/internal/telephony/RIL$RILSender;

    invoke-direct {v7, p0, v4}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    .line 774
    const-string/jumbo v7, "connectivity"

    .line 773
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 775
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 776
    const-string/jumbo v7, "Not starting RILReceiver: wifi-only"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 797
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v6

    .line 798
    .local v6, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 743
    return-void

    .line 778
    .end local v6    # "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting RILReceiver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 779
    new-instance v7, Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    .line 780
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RILReceiver"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    .line 781
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 784
    const-string/jumbo v7, "display"

    .line 783
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 785
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    .line 786
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 787
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    .line 789
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 791
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 793
    const-string/jumbo v7, "plugged"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 6
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "wakeLockType"    # I

    .prologue
    .line 2470
    monitor-enter p1

    .line 2471
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2472
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to aquire wakelock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    .line 2473
    return-void

    .line 2476
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2499
    :try_start_1
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Acquiring Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 2500
    return-void

    .line 2478
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2479
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2480
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2481
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 2483
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2484
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2485
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    .line 2502
    :goto_0
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p1

    .line 2469
    return-void

    .line 2478
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2470
    :catchall_1
    move-exception v1

    monitor-exit p1

    throw v1

    .line 2489
    :pswitch_1
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2490
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2491
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 2493
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2494
    .restart local v0    # "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2495
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v2

    goto :goto_0

    .line 2489
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 2645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2646
    .local v0, "endTime":J
    iget-wide v4, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v3, v4

    .line 2648
    .local v3, "totalTime":I
    sget-object v5, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2649
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    .line 2650
    .local v2, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v2, :cond_0

    .line 2652
    new-instance v2, Landroid/telephony/TelephonyHistogram;

    .line 2653
    .end local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2652
    const/4 v6, 0x1

    .line 2653
    const/4 v7, 0x5

    .line 2652
    invoke-direct {v2, v6, v4, v7}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 2654
    .restart local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2656
    :cond_0
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 2644
    return-void

    .line 2648
    .end local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 2610
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2611
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2612
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 2613
    const-string/jumbo v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearRequestList  mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2614
    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2613
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2615
    const-string/jumbo v6, " mRequestList="

    .line 2613
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2619
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 2620
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    .line 2621
    const-string/jumbo v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2622
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    .line 2621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2625
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2626
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2628
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2608
    return-void

    .line 2610
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private clearWakeLock(I)Z
    .locals 5
    .param p1, "wakeLockType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2534
    if-nez p1, :cond_1

    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2536
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return v2

    .line 2537
    :cond_0
    :try_start_1
    const-string/jumbo v0, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2538
    const-string/jumbo v3, "at time of clearing"

    .line 2537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2541
    return v4

    .line 2535
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2544
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2545
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    return v2

    .line 2546
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 2547
    return v4

    .line 2544
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "pdu"    # [B

    .prologue
    .line 1474
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1475
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1478
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1480
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v0, v7

    .line 1486
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1487
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1488
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1487
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1492
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v6, v7

    .line 1493
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v6

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1494
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 1495
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1494
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1498
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1499
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1501
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1503
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    .line 1504
    .local v4, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1470
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    .prologue
    .line 1433
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method private decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 2508
    monitor-enter p1

    .line 2509
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 2526
    const-string/jumbo v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :goto_0
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 2507
    return-void

    .line 2511
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2512
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2513
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2508
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 2515
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2511
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2509
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    .prologue
    .line 2633
    const/4 v1, 0x0

    .line 2634
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2635
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v1, v0

    .line 2636
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v1, :cond_0

    .line 2637
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 2641
    return-object v1

    .line 2634
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 3851
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3853
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3854
    const/4 v5, 0x5

    if-ge p2, v5, :cond_1

    .line 3855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3857
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3859
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3860
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3895
    :cond_0
    :goto_0
    return-object v1

    .line 3863
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 3864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 3865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3869
    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 3870
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 3869
    if-eqz v5, :cond_2

    .line 3871
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "getDataCallResponse, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3873
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3874
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3875
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3877
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3878
    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3879
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 3881
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3882
    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3883
    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 3885
    :cond_5
    const/16 v5, 0xa

    if-lt p2, v5, :cond_6

    .line 3886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3887
    .local v4, "pcscf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3888
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 3891
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_6
    const/16 v5, 0xb

    if-lt p2, v5, :cond_0

    .line 3892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    goto/16 :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    .prologue
    .line 2443
    sparse-switch p1, :sswitch_data_0

    .line 2449
    new-instance v1, Ljava/lang/RuntimeException;

    .line 2450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2449
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2444
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2452
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2445
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2446
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2443
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 542
    if-nez p0, :cond_0

    return-object v0

    .line 544
    :cond_0
    const/4 v1, 0x0

    .line 545
    .local v1, "timeoutResponse":Ljava/lang/Object;
    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v0, :pswitch_data_0

    .line 551
    .end local v1    # "timeoutResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 547
    .restart local v1    # "timeoutResponse":Ljava/lang/Object;
    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    .line 548
    .end local v1    # "timeoutResponse":Ljava/lang/Object;
    const-wide/16 v2, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [I

    move v5, v4

    move v7, v4

    move v8, v4

    .line 547
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    .line 549
    .restart local v1    # "timeoutResponse":Ljava/lang/Object;
    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v4

    .line 367
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 369
    new-instance v0, Landroid/telephony/TelephonyHistogram;

    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v0, v3}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 370
    .local v0, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "entry":Landroid/telephony/TelephonyHistogram;
    :cond_0
    monitor-exit v4

    .line 373
    return-object v2

    .line 366
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "rilCommand"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .prologue
    .line 5019
    invoke-static {p1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5020
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5021
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5022
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5023
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5024
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5025
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5026
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5031
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5018
    return-void
.end method

.method private makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2946
    const/4 v4, 0x1

    .line 2948
    .local v4, "raf":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2949
    const v3, 0x104006a

    .line 2948
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2950
    .local v7, "rafString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2951
    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v4

    .line 2953
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2954
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    move v3, v2

    .line 2953
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 2955
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2956
    return-object v0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .prologue
    const/4 v4, 0x0

    .line 4158
    const/16 v0, 0x403

    .line 4159
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 4160
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4161
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4162
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 4163
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4162
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4157
    :cond_0
    :goto_0
    return-void

    .line 4165
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 4166
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4167
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4168
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 4169
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4168
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4171
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 4172
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4173
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4174
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    .line 4175
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4174
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4177
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 4178
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4179
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4180
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    .line 4181
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4180
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4183
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 4184
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4185
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4186
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    .line 4187
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4186
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4189
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 4190
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4191
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4192
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    .line 4193
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4192
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4195
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 4196
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4197
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4198
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 4199
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4198
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .param p1, "rilVer"    # I

    .prologue
    const/4 v3, 0x0

    .line 3567
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    .line 3568
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    .line 3570
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3569
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3566
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2573
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2574
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;I)V

    .line 2568
    :cond_1
    :goto_0
    return-void

    .line 2575
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 2576
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2577
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 2578
    if-nez v2, :cond_4

    .line 2579
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2581
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2582
    return-void

    .line 2584
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2589
    .local v1, "serial":I
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2590
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    monitor-exit v4

    .line 2592
    if-nez v0, :cond_6

    .line 2593
    const-string/jumbo v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected solicited ack response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2589
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2595
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Ack < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;
    .locals 16
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    .line 2663
    const/4 v2, 0x0

    .line 2665
    .local v2, "found":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2666
    .local v14, "serial":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2670
    .local v7, "error":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v13

    .line 2672
    .local v13, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v13, :cond_0

    .line 2673
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected solicited response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2674
    const-string/jumbo v6, " error: "

    .line 2673
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v4, 0x0

    return-object v4

    .line 2679
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 2681
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->getRilVersion()I

    move-result v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_1

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 2683
    const/16 v4, 0x320

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 2684
    .local v12, "response":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v12}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2685
    .local v11, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 2686
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 2688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2689
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2689
    const-string/jumbo v5, " Sending ack to ril.cpp"

    .line 2688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2694
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "response":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    const/4 v3, 0x0

    .line 2696
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_4

    .line 2698
    :cond_2
    :try_start_0
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v4, :pswitch_data_0

    .line 2849
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized solicited response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    :catch_0
    move-exception v15

    .line 2854
    .local v15, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2855
    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    .line 2854
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2856
    const-string/jumbo v6, " exception, possible invalid RIL response"

    .line 2854
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2858
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_3

    .line 2859
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2860
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2862
    :cond_3
    return-object v13

    .line 2704
    .end local v15    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 2866
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_4
    :goto_0
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v5, 0x81

    if-ne v4, v5, :cond_5

    .line 2869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2870
    const-string/jumbo v5, " Setting Radio State to Unavailable regardless of error."

    .line 2869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2871
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2877
    :cond_5
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v4, :pswitch_data_1

    .line 2890
    :cond_6
    :goto_1
    :pswitch_2
    if-eqz v7, :cond_8

    .line 2891
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v4, :sswitch_data_0

    .line 2925
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2927
    :cond_8
    if-nez v7, :cond_9

    .line 2929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2930
    const-string/jumbo v5, " "

    .line 2929
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2930
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5, v3}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2929
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2932
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_9

    .line 2933
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2934
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2938
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2939
    iget v8, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v9, v3

    .line 2938
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 2941
    return-object v13

    .line 2705
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2706
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2707
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2708
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2709
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2710
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2711
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2712
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2713
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2714
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2715
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2716
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2718
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_a

    .line 2720
    const-string/jumbo v4, "testing emergency call, notify ECM Registrants"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2724
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2727
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2728
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2729
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2730
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2731
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2732
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2733
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2734
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2735
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2736
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2737
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2738
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2739
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2740
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2741
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2742
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2743
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2744
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2745
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2746
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2747
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2748
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2749
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2750
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2751
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2752
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2753
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2754
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2755
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2756
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2757
    :pswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2758
    :pswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2759
    :pswitch_30
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2760
    :pswitch_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2761
    :pswitch_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2762
    :pswitch_33
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2763
    :pswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2764
    :pswitch_35
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2765
    :pswitch_36
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2766
    :pswitch_37
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2767
    :pswitch_38
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2768
    :pswitch_39
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2769
    :pswitch_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2770
    :pswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2771
    :pswitch_3c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2772
    :pswitch_3d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2773
    :pswitch_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2774
    :pswitch_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2775
    :pswitch_40
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2776
    :pswitch_41
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2777
    :pswitch_42
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2778
    :pswitch_43
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2779
    :pswitch_44
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2780
    :pswitch_45
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2781
    :pswitch_46
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2782
    :pswitch_47
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2783
    :pswitch_48
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2784
    :pswitch_49
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2785
    :pswitch_4a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2786
    :pswitch_4b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2787
    :pswitch_4c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2788
    :pswitch_4d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2789
    :pswitch_4e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2790
    :pswitch_4f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2791
    :pswitch_50
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2792
    :pswitch_51
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2793
    :pswitch_52
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2794
    :pswitch_53
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2795
    :pswitch_54
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2796
    :pswitch_55
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2797
    :pswitch_56
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2798
    :pswitch_57
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2799
    :pswitch_58
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2800
    :pswitch_59
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2801
    :pswitch_5a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2802
    :pswitch_5b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2803
    :pswitch_5c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2804
    :pswitch_5d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2805
    :pswitch_5e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2806
    :pswitch_5f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2807
    :pswitch_60
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2808
    :pswitch_61
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2809
    :pswitch_62
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2810
    :pswitch_63
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2811
    :pswitch_64
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2812
    :pswitch_65
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2813
    :pswitch_66
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2814
    :pswitch_67
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2815
    :pswitch_68
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2816
    :pswitch_69
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2817
    :pswitch_6a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2818
    :pswitch_6b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2819
    :pswitch_6c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2820
    :pswitch_6d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2821
    :pswitch_6e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_0

    .line 2822
    :pswitch_6f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2823
    :pswitch_70
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2824
    :pswitch_71
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2825
    :pswitch_72
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2826
    :pswitch_73
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2827
    :pswitch_74
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2828
    :pswitch_75
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2829
    :pswitch_76
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2830
    :pswitch_77
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2831
    :pswitch_78
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2832
    :pswitch_79
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2833
    :pswitch_7a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2834
    :pswitch_7b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2835
    :pswitch_7c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2836
    :pswitch_7d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2837
    :pswitch_7e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2838
    :pswitch_7f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2839
    :pswitch_80
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2840
    :pswitch_81
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2841
    :pswitch_82
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2842
    :pswitch_83
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2843
    :pswitch_84
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2844
    :pswitch_85
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2845
    :pswitch_86
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2846
    :pswitch_87
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 2847
    :pswitch_88
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCarrierIdentifiers(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 2880
    .end local v3    # "ret":Ljava/lang/Object;
    :pswitch_89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_6

    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    .line 2882
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2897
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_7

    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    .line 2899
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 2909
    :sswitch_1
    const/4 v4, 0x6

    if-eq v4, v7, :cond_b

    .line 2910
    const/4 v4, 0x2

    if-ne v4, v7, :cond_7

    .line 2913
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v3

    .line 2914
    .restart local v3    # "ret":Ljava/lang/Object;
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2919
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_2
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v4, 0x0

    .line 2920
    const/4 v6, 0x5

    new-array v8, v6, [I

    .line 2919
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2920
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2919
    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    .line 2921
    .end local v7    # "error":I
    .restart local v3    # "ret":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2922
    .restart local v7    # "error":I
    goto/16 :goto_2

    .line 2698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_5f
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_66
        :pswitch_64
        :pswitch_65
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_0
        :pswitch_0
        :pswitch_71
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
    .end packed-switch

    .line 2877
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_89
        :pswitch_2
        :pswitch_89
    .end packed-switch

    .line 2891
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
        0x82 -> :sswitch_1
        0x87 -> :sswitch_2
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;I)V
    .locals 28
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    .line 3048
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3051
    .local v16, "response":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->getRilVersion()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    const/16 v23, 0x4

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 3053
    const/16 v23, 0x320

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v19

    .line 3054
    .local v19, "rr":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3055
    .local v8, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 3056
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3058
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unsol response received for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3059
    const-string/jumbo v24, " Sending ack to ril.cpp"

    .line 3058
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3063
    .end local v8    # "msg":Landroid/os/Message;
    .end local v19    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    packed-switch v16, :pswitch_data_0

    .line 3118
    :pswitch_0
    :try_start_0
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unrecognized unsol response: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3120
    :catch_0
    move-exception v22

    .line 3121
    .local v22, "tr":Ljava/lang/Throwable;
    const-string/jumbo v23, "RILJ"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Exception processing unsol response: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3122
    const-string/jumbo v25, "Exception:"

    .line 3121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3122
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v25

    .line 3121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    return-void

    .line 3070
    .end local v22    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .line 3126
    .local v18, "ret":Ljava/lang/Object;
    :goto_0
    packed-switch v16, :pswitch_data_1

    .line 3044
    .end local v18    # "ret":Ljava/lang/Object;
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 3071
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3072
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3073
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3074
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3075
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3076
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3077
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3078
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3079
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3080
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3081
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3082
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3083
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3084
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3085
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3086
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3087
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3088
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3089
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3090
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3091
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3092
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3093
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3094
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3095
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 3096
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3097
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3098
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3099
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3100
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3101
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3102
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3103
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3104
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3105
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3106
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3107
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3108
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3109
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3111
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3112
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3113
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3114
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3115
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responsePcoData(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3129
    :pswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    .line 3130
    .local v9, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3132
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_1

    .line 3135
    .end local v9    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_30
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3138
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3137
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3141
    :pswitch_31
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3144
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3143
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3147
    :pswitch_32
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3150
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3149
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3153
    :pswitch_33
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x1

    .line 3156
    const/16 v26, 0x1

    .line 3155
    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    .line 3159
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/String;

    .line 3161
    .local v4, "a":[Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x1

    aput-object v18, v4, v23

    .line 3165
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v20

    .line 3166
    .local v20, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3168
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3167
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3173
    .end local v4    # "a":[Ljava/lang/String;
    .end local v20    # "sms":Landroid/telephony/SmsMessage;
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_34
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3177
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3176
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3181
    :pswitch_35
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object/from16 v21, v18

    .line 3183
    check-cast v21, [I

    .line 3185
    .local v21, "smsIndex":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3188
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3187
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3191
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3192
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    .line 3191
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v21    # "smsIndex":[I
    :pswitch_36
    move-object/from16 v15, v18

    .line 3196
    check-cast v15, [Ljava/lang/String;

    .line 3198
    .local v15, "resp":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 3199
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .line 3200
    check-cast v18, [Ljava/lang/String;

    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    aput-object v23, v15, v24

    .line 3201
    const/16 v23, 0x0

    const/16 v24, 0x1

    aput-object v23, v15, v24

    .line 3203
    :cond_3
    const/16 v23, 0x0

    aget-object v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3206
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3205
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3210
    .end local v15    # "resp":[Ljava/lang/String;
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 3216
    .local v10, "nitzReceiveTime":J
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 3218
    .local v17, "result":[Ljava/lang/Object;
    const/16 v23, 0x0

    aput-object v18, v17, v23

    .line 3219
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v17, v24

    .line 3222
    const-string/jumbo v23, "telephony.test.ignore.nitz"

    const/16 v24, 0x0

    .line 3221
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3224
    .local v6, "ignoreNitz":Z
    if-eqz v6, :cond_4

    .line 3225
    const-string/jumbo v23, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3227
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3230
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3229
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3234
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    goto/16 :goto_1

    .line 3243
    .end local v6    # "ignoreNitz":Z
    .end local v10    # "nitzReceiveTime":J
    .end local v17    # "result":[Ljava/lang/Object;
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3245
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3244
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3249
    :pswitch_39
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3255
    :pswitch_3a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3259
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3258
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3264
    :pswitch_3b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3268
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3267
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3273
    :pswitch_3c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3277
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3276
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3282
    :pswitch_3d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3286
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3285
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3291
    :pswitch_3e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3295
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3294
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3300
    :pswitch_3f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 3308
    :pswitch_40
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3312
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3311
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3317
    :pswitch_41
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3321
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3320
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3326
    :pswitch_42
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3329
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3328
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3334
    :pswitch_43
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 3342
    :pswitch_44
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x2

    .line 3345
    const/16 v26, 0x2

    .line 3344
    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    move-object/from16 v20, v18

    .line 3347
    check-cast v20, Landroid/telephony/SmsMessage;

    .line 3349
    .restart local v20    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3351
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3350
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .end local v20    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_45
    move-object/from16 v23, v18

    .line 3356
    check-cast v23, [B

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3360
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3359
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3365
    :pswitch_46
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 3373
    :pswitch_47
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 3381
    :pswitch_48
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3385
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3384
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3390
    :pswitch_49
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3394
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3393
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3402
    :pswitch_4a
    :try_start_2
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3408
    .local v7, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "rec$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3409
    .local v13, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3410
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3403
    .end local v7    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v13    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .end local v14    # "rec$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    .line 3404
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v23, "RILJ"

    const-string/jumbo v24, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/ClassCastException;
    :pswitch_4b
    move-object/from16 v23, v18

    .line 3415
    check-cast v23, [B

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3422
    :pswitch_4c
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3424
    check-cast v18, [I

    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    aget v23, v18, v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    .line 3425
    .local v12, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3426
    new-instance v24, Landroid/os/AsyncResult;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3425
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3424
    .end local v12    # "playtone":Z
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "playtone":Z
    goto :goto_3

    .line 3431
    .end local v12    # "playtone":Z
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_4d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3435
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3434
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3440
    :pswitch_4e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3444
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3443
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3449
    :pswitch_4f
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3453
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3452
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3458
    :pswitch_50
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3462
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3461
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3467
    :pswitch_51
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3471
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3470
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3476
    :pswitch_52
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3479
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 3480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 3481
    const v23, 0x7fffffff

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 3482
    check-cast v18, [I

    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    aget v23, v18, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_1

    .line 3486
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_53
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3490
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3489
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3495
    :pswitch_54
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3499
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3498
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3504
    :pswitch_55
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v23, v18

    check-cast v23, [I

    const/16 v26, 0x0

    aget v23, v23, v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3510
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3509
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3515
    :pswitch_56
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3519
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3518
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3523
    :pswitch_57
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    .line 3527
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3526
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3531
    :pswitch_58
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3535
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3534
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3539
    :pswitch_59
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    .line 3543
    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3542
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3547
    :pswitch_5a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3554
    :pswitch_5b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/AsyncResult;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 3063
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_14
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 3126
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_2f
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_42
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_4e
        :pswitch_53
        :pswitch_30
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_2
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
    .end packed-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 575
    const/4 v2, 0x0

    .line 576
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 578
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 580
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 581
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v7

    .line 585
    :cond_1
    add-int/2addr v2, v0

    .line 586
    sub-int/2addr v3, v0

    .line 587
    if-gtz v3, :cond_0

    .line 589
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 590
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 589
    or-int/2addr v4, v5

    .line 591
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 589
    or-int/2addr v4, v5

    .line 592
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 589
    or-int v1, v4, v5

    .line 595
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 596
    move v3, v1

    .line 598
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 600
    if-gez v0, :cond_3

    .line 601
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 602
    const-string/jumbo v6, " remaining="

    .line 601
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return v7

    .line 606
    :cond_3
    add-int/2addr v2, v0

    .line 607
    sub-int/2addr v3, v0

    .line 608
    if-gtz v3, :cond_2

    .line 610
    return v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4367
    sparse-switch p0, :sswitch_data_0

    .line 4506
    const-string/jumbo v0, "<unknown request>"

    return-object v0

    .line 4368
    :sswitch_0
    const-string/jumbo v0, "GET_SIM_STATUS"

    return-object v0

    .line 4369
    :sswitch_1
    const-string/jumbo v0, "ENTER_SIM_PIN"

    return-object v0

    .line 4370
    :sswitch_2
    const-string/jumbo v0, "ENTER_SIM_PUK"

    return-object v0

    .line 4371
    :sswitch_3
    const-string/jumbo v0, "ENTER_SIM_PIN2"

    return-object v0

    .line 4372
    :sswitch_4
    const-string/jumbo v0, "ENTER_SIM_PUK2"

    return-object v0

    .line 4373
    :sswitch_5
    const-string/jumbo v0, "CHANGE_SIM_PIN"

    return-object v0

    .line 4374
    :sswitch_6
    const-string/jumbo v0, "CHANGE_SIM_PIN2"

    return-object v0

    .line 4375
    :sswitch_7
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object v0

    .line 4376
    :sswitch_8
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 4377
    :sswitch_9
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 4378
    :sswitch_a
    const-string/jumbo v0, "GET_IMSI"

    return-object v0

    .line 4379
    :sswitch_b
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 4380
    :sswitch_c
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 4381
    :sswitch_d
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 4382
    :sswitch_e
    const-string/jumbo v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 4383
    :sswitch_f
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 4384
    :sswitch_10
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 4385
    :sswitch_11
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 4386
    :sswitch_12
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    return-object v0

    .line 4387
    :sswitch_13
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    return-object v0

    .line 4388
    :sswitch_14
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    return-object v0

    .line 4389
    :sswitch_15
    const-string/jumbo v0, "OPERATOR"

    return-object v0

    .line 4390
    :sswitch_16
    const-string/jumbo v0, "RADIO_POWER"

    return-object v0

    .line 4391
    :sswitch_17
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 4392
    :sswitch_18
    const-string/jumbo v0, "SEND_SMS"

    return-object v0

    .line 4393
    :sswitch_19
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    return-object v0

    .line 4394
    :sswitch_1a
    const-string/jumbo v0, "SETUP_DATA_CALL"

    return-object v0

    .line 4395
    :sswitch_1b
    const-string/jumbo v0, "SIM_IO"

    return-object v0

    .line 4396
    :sswitch_1c
    const-string/jumbo v0, "SEND_USSD"

    return-object v0

    .line 4397
    :sswitch_1d
    const-string/jumbo v0, "CANCEL_USSD"

    return-object v0

    .line 4398
    :sswitch_1e
    const-string/jumbo v0, "GET_CLIR"

    return-object v0

    .line 4399
    :sswitch_1f
    const-string/jumbo v0, "SET_CLIR"

    return-object v0

    .line 4400
    :sswitch_20
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 4401
    :sswitch_21
    const-string/jumbo v0, "SET_CALL_FORWARD"

    return-object v0

    .line 4402
    :sswitch_22
    const-string/jumbo v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 4403
    :sswitch_23
    const-string/jumbo v0, "SET_CALL_WAITING"

    return-object v0

    .line 4404
    :sswitch_24
    const-string/jumbo v0, "SMS_ACKNOWLEDGE"

    return-object v0

    .line 4405
    :sswitch_25
    const-string/jumbo v0, "GET_IMEI"

    return-object v0

    .line 4406
    :sswitch_26
    const-string/jumbo v0, "GET_IMEISV"

    return-object v0

    .line 4407
    :sswitch_27
    const-string/jumbo v0, "ANSWER"

    return-object v0

    .line 4408
    :sswitch_28
    const-string/jumbo v0, "DEACTIVATE_DATA_CALL"

    return-object v0

    .line 4409
    :sswitch_29
    const-string/jumbo v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 4410
    :sswitch_2a
    const-string/jumbo v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 4411
    :sswitch_2b
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 4412
    :sswitch_2c
    const-string/jumbo v0, "QUERY_NETWORK_SELECTION_MODE"

    return-object v0

    .line 4413
    :sswitch_2d
    const-string/jumbo v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object v0

    .line 4414
    :sswitch_2e
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL"

    return-object v0

    .line 4415
    :sswitch_2f
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS "

    return-object v0

    .line 4416
    :sswitch_30
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 4417
    :sswitch_31
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 4418
    :sswitch_32
    const-string/jumbo v0, "BASEBAND_VERSION"

    return-object v0

    .line 4419
    :sswitch_33
    const-string/jumbo v0, "SEPARATE_CONNECTION"

    return-object v0

    .line 4420
    :sswitch_34
    const-string/jumbo v0, "SET_MUTE"

    return-object v0

    .line 4421
    :sswitch_35
    const-string/jumbo v0, "GET_MUTE"

    return-object v0

    .line 4422
    :sswitch_36
    const-string/jumbo v0, "QUERY_CLIP"

    return-object v0

    .line 4423
    :sswitch_37
    const-string/jumbo v0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object v0

    .line 4424
    :sswitch_38
    const-string/jumbo v0, "DATA_CALL_LIST"

    return-object v0

    .line 4425
    :sswitch_39
    const-string/jumbo v0, "RESET_RADIO"

    return-object v0

    .line 4426
    :sswitch_3a
    const-string/jumbo v0, "OEM_HOOK_RAW"

    return-object v0

    .line 4427
    :sswitch_3b
    const-string/jumbo v0, "OEM_HOOK_STRINGS"

    return-object v0

    .line 4428
    :sswitch_3c
    const-string/jumbo v0, "SCREEN_STATE"

    return-object v0

    .line 4429
    :sswitch_3d
    const-string/jumbo v0, "SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4430
    :sswitch_3e
    const-string/jumbo v0, "WRITE_SMS_TO_SIM"

    return-object v0

    .line 4431
    :sswitch_3f
    const-string/jumbo v0, "DELETE_SMS_ON_SIM"

    return-object v0

    .line 4432
    :sswitch_40
    const-string/jumbo v0, "SET_BAND_MODE"

    return-object v0

    .line 4433
    :sswitch_41
    const-string/jumbo v0, "QUERY_AVAILABLE_BAND_MODE"

    return-object v0

    .line 4434
    :sswitch_42
    const-string/jumbo v0, "REQUEST_STK_GET_PROFILE"

    return-object v0

    .line 4435
    :sswitch_43
    const-string/jumbo v0, "REQUEST_STK_SET_PROFILE"

    return-object v0

    .line 4436
    :sswitch_44
    const-string/jumbo v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    return-object v0

    .line 4437
    :sswitch_45
    const-string/jumbo v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    return-object v0

    .line 4438
    :sswitch_46
    const-string/jumbo v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object v0

    .line 4439
    :sswitch_47
    const-string/jumbo v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 4440
    :sswitch_48
    const-string/jumbo v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 4441
    :sswitch_49
    const-string/jumbo v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 4442
    :sswitch_4a
    const-string/jumbo v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    return-object v0

    .line 4443
    :sswitch_4b
    const-string/jumbo v0, "REQUEST_SET_LOCATION_UPDATES"

    return-object v0

    .line 4444
    :sswitch_4c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 4445
    :sswitch_4d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    return-object v0

    .line 4446
    :sswitch_4e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    return-object v0

    .line 4447
    :sswitch_4f
    const-string/jumbo v0, "RIL_REQUEST_SET_TTY_MODE"

    return-object v0

    .line 4448
    :sswitch_50
    const-string/jumbo v0, "RIL_REQUEST_QUERY_TTY_MODE"

    return-object v0

    .line 4449
    :sswitch_51
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 4450
    :sswitch_52
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 4451
    :sswitch_53
    const-string/jumbo v0, "RIL_REQUEST_CDMA_FLASH"

    return-object v0

    .line 4452
    :sswitch_54
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    return-object v0

    .line 4453
    :sswitch_55
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SEND_SMS"

    return-object v0

    .line 4454
    :sswitch_56
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    return-object v0

    .line 4455
    :sswitch_57
    const-string/jumbo v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    return-object v0

    .line 4456
    :sswitch_58
    const-string/jumbo v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    return-object v0

    .line 4457
    :sswitch_59
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    return-object v0

    .line 4458
    :sswitch_5a
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    return-object v0

    .line 4459
    :sswitch_5b
    const-string/jumbo v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    return-object v0

    .line 4460
    :sswitch_5c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object v0

    .line 4461
    :sswitch_5d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    return-object v0

    .line 4462
    :sswitch_5e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    return-object v0

    .line 4463
    :sswitch_5f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    return-object v0

    .line 4464
    :sswitch_60
    const-string/jumbo v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    return-object v0

    .line 4465
    :sswitch_61
    const-string/jumbo v0, "RIL_REQUEST_DEVICE_IDENTITY"

    return-object v0

    .line 4466
    :sswitch_62
    const-string/jumbo v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    return-object v0

    .line 4467
    :sswitch_63
    const-string/jumbo v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    return-object v0

    .line 4468
    :sswitch_64
    const-string/jumbo v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4469
    :sswitch_65
    const-string/jumbo v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    return-object v0

    .line 4470
    :sswitch_66
    const-string/jumbo v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    return-object v0

    .line 4471
    :sswitch_67
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 4472
    :sswitch_68
    const-string/jumbo v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    return-object v0

    .line 4473
    :sswitch_69
    const-string/jumbo v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object v0

    .line 4474
    :sswitch_6a
    const-string/jumbo v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    return-object v0

    .line 4475
    :sswitch_6b
    const-string/jumbo v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    return-object v0

    .line 4476
    :sswitch_6c
    const-string/jumbo v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    return-object v0

    .line 4477
    :sswitch_6d
    const-string/jumbo v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    return-object v0

    .line 4478
    :sswitch_6e
    const-string/jumbo v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object v0

    .line 4479
    :sswitch_6f
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_PROFILE"

    return-object v0

    .line 4480
    :sswitch_70
    const-string/jumbo v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 4481
    :sswitch_71
    const-string/jumbo v0, "RIL_REQUEST_IMS_SEND_SMS"

    return-object v0

    .line 4482
    :sswitch_72
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    return-object v0

    .line 4483
    :sswitch_73
    const-string/jumbo v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    return-object v0

    .line 4484
    :sswitch_74
    const-string/jumbo v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    return-object v0

    .line 4485
    :sswitch_75
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    return-object v0

    .line 4486
    :sswitch_76
    const-string/jumbo v0, "RIL_REQUEST_NV_READ_ITEM"

    return-object v0

    .line 4487
    :sswitch_77
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_ITEM"

    return-object v0

    .line 4488
    :sswitch_78
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    return-object v0

    .line 4489
    :sswitch_79
    const-string/jumbo v0, "RIL_REQUEST_NV_RESET_CONFIG"

    return-object v0

    .line 4490
    :sswitch_7a
    const-string/jumbo v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    return-object v0

    .line 4491
    :sswitch_7b
    const-string/jumbo v0, "RIL_REQUEST_ALLOW_DATA"

    return-object v0

    .line 4492
    :sswitch_7c
    const-string/jumbo v0, "GET_HARDWARE_CONFIG"

    return-object v0

    .line 4493
    :sswitch_7d
    const-string/jumbo v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    return-object v0

    .line 4494
    :sswitch_7e
    const-string/jumbo v0, "RIL_REQUEST_SHUTDOWN"

    return-object v0

    .line 4496
    :sswitch_7f
    const-string/jumbo v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    return-object v0

    .line 4498
    :sswitch_80
    const-string/jumbo v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    return-object v0

    .line 4499
    :sswitch_81
    const-string/jumbo v0, "RIL_REQUEST_START_LCE"

    return-object v0

    .line 4500
    :sswitch_82
    const-string/jumbo v0, "RIL_REQUEST_STOP_LCE"

    return-object v0

    .line 4501
    :sswitch_83
    const-string/jumbo v0, "RIL_REQUEST_PULL_LCEDATA"

    return-object v0

    .line 4502
    :sswitch_84
    const-string/jumbo v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    return-object v0

    .line 4503
    :sswitch_85
    const-string/jumbo v0, "RIL_REQUEST_SET_ALLOWED_CARRIERS"

    return-object v0

    .line 4504
    :sswitch_86
    const-string/jumbo v0, "RIL_REQUEST_GET_ALLOWED_CARRIERS"

    return-object v0

    .line 4505
    :sswitch_87
    const-string/jumbo v0, "RIL_RESPONSE_ACKNOWLEDGEMENT"

    return-object v0

    .line 4367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x43 -> :sswitch_42
        0x44 -> :sswitch_43
        0x45 -> :sswitch_44
        0x46 -> :sswitch_45
        0x47 -> :sswitch_46
        0x48 -> :sswitch_47
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4c
        0x4e -> :sswitch_4d
        0x4f -> :sswitch_4e
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_50
        0x52 -> :sswitch_51
        0x53 -> :sswitch_52
        0x54 -> :sswitch_53
        0x55 -> :sswitch_54
        0x56 -> :sswitch_5c
        0x57 -> :sswitch_55
        0x58 -> :sswitch_56
        0x59 -> :sswitch_57
        0x5a -> :sswitch_58
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_59
        0x5d -> :sswitch_5a
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5e
        0x60 -> :sswitch_5f
        0x61 -> :sswitch_60
        0x62 -> :sswitch_61
        0x63 -> :sswitch_64
        0x64 -> :sswitch_62
        0x65 -> :sswitch_63
        0x66 -> :sswitch_65
        0x67 -> :sswitch_66
        0x68 -> :sswitch_67
        0x69 -> :sswitch_68
        0x6a -> :sswitch_69
        0x6b -> :sswitch_6a
        0x6c -> :sswitch_6b
        0x6d -> :sswitch_6c
        0x6e -> :sswitch_6d
        0x6f -> :sswitch_6e
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x80 -> :sswitch_6f
        0x81 -> :sswitch_7e
        0x82 -> :sswitch_80
        0x83 -> :sswitch_7f
        0x84 -> :sswitch_81
        0x85 -> :sswitch_82
        0x86 -> :sswitch_83
        0x87 -> :sswitch_84
        0x88 -> :sswitch_85
        0x89 -> :sswitch_86
        0x320 -> :sswitch_87
    .end sparse-switch
.end method

.method private responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x5

    .line 4312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4313
    .local v4, "sleepModeTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4314
    .local v5, "idleModeTimeMs":I
    new-array v6, v2, [I

    .line 4315
    .local v6, "txModeTimeMs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v6, v0

    .line 4315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4318
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4320
    .local v7, "rxModeTimeMs":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Modem activity info received: sleepModeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4322
    const-string/jumbo v2, " idleModeTimeMs="

    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4323
    const-string/jumbo v2, " txModeTimeMs[]="

    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4323
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4324
    const-string/jumbo v2, " rxModeTimeMs="

    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4327
    const/4 v8, 0x0

    .line 4326
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    return-object v1
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3612
    .local v2, "numInfos":I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3614
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3615
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 3617
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 3618
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 3619
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 3620
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 3621
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3622
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 3614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3625
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3780
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3787
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 3788
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3790
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 3794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 3796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3797
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 3799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3801
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3802
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3806
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    .line 3807
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 3808
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 3809
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 3810
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 3811
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 3812
    const-string/jumbo v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 3813
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 3814
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 3812
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 3815
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3816
    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 3815
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 3817
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3818
    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 3817
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 3824
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3826
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3828
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 3829
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3830
    const-string/jumbo v8, "InCall VoicePrivacy is enabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3787
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    .line 3793
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 3794
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    .line 3797
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 3798
    goto/16 :goto_4

    .line 3820
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string/jumbo v8, "Incoming UUS : NOT present!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 3832
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3833
    const-string/jumbo v8, "InCall VoicePrivacy is disabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 3837
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3839
    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3840
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_7

    .line 3841
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3843
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3847
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4144
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 4146
    .local v0, "response":[C
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 4147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 4148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x2

    aput-char v1, v0, v2

    .line 4149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x3

    aput-char v1, v0, v2

    .line 4151
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    .line 4153
    return-object v0
.end method

.method private responseCarrierIdentifiers(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4331
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4332
    .local v12, "retVal":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4333
    .local v8, "len_allowed_carriers":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4334
    .local v9, "len_excluded_carriers":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_4

    .line 4335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4336
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4337
    .local v2, "mnc":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "spn":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "imsi":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "gid1":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4338
    .local v6, "gid2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4339
    .local v11, "matchType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 4340
    .local v10, "matchData":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    .line 4341
    move-object v3, v10

    .line 4349
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "gid1":Ljava/lang/String;
    .end local v6    # "gid2":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v0, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v0 .. v6}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4334
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4342
    .restart local v3    # "spn":Ljava/lang/String;
    .restart local v4    # "imsi":Ljava/lang/String;
    .restart local v5    # "gid1":Ljava/lang/String;
    .restart local v6    # "gid2":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    if-ne v11, v0, :cond_2

    .line 4343
    move-object v4, v10

    .local v4, "imsi":Ljava/lang/String;
    goto :goto_1

    .line 4344
    .local v4, "imsi":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    if-ne v11, v0, :cond_3

    .line 4345
    move-object v5, v10

    .local v5, "gid1":Ljava/lang/String;
    goto :goto_1

    .line 4346
    .local v5, "gid1":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 4347
    move-object v6, v10

    .local v6, "gid2":Ljava/lang/String;
    goto :goto_1

    .line 4352
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "gid1":Ljava/lang/String;
    .end local v6    # "gid2":Ljava/lang/String;
    .end local v10    # "matchData":Ljava/lang/String;
    .end local v11    # "matchType":I
    :cond_4
    return-object v12
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 4061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4063
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    .line 4068
    const/16 v1, 0x5e

    .line 4069
    .local v1, "numInts":I
    new-array v3, v1, [I

    .line 4072
    .local v3, "response":[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 4076
    const/4 v0, 0x1

    .line 4068
    .local v0, "i":I
    :goto_0
    const/16 v4, 0x5e

    .line 4076
    if-ge v0, v4, :cond_1

    .line 4077
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 4078
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 4079
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 4076
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 4083
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 4084
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    .line 4086
    .restart local v3    # "response":[I
    aput v2, v3, v6

    .line 4087
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 4087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4092
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4125
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 4127
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 4129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    .line 4128
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 4130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 4131
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 4132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 4133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 4134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 4135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 4136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 4137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 4139
    return-object v0
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4113
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4115
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4116
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 4117
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4120
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3644
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3646
    .local v0, "sms":Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4213
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4215
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4216
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 4217
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4220
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    :cond_0
    return-object v3
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 4001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4002
    .local v3, "num":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4005
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 4007
    .local v7, "subId":[I
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 4008
    aget v9, v7, v10

    .line 4007
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v4

    .line 4011
    .local v4, "radioType":I
    if-eqz v4, :cond_0

    .line 4012
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 4013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4014
    .local v6, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4015
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 4016
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4019
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v6    # "rssi":I
    :cond_0
    return-object v5
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3903
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3904
    .local v1, "num":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseDataCallList ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3906
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3907
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3908
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3912
    :cond_0
    return-object v2
.end method

.method private responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3592
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 3593
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 3594
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_0

    .line 3595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 3597
    :cond_0
    return-object v0
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4023
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4025
    .local v0, "response":[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 4029
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 4031
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4040
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4042
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 4043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4044
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4045
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4046
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4047
    .local v4, "toScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v5, 0x1

    .line 4049
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 4051
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4042
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4047
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 4053
    .end local v1    # "fromId":I
    .end local v2    # "toId":I
    .end local v3    # "fromScheme":I
    .end local v4    # "toScheme":I
    .end local v5    # "selected":Z
    :cond_1
    return-object v8
.end method

.method private responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4230
    .local v9, "num":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 4235
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 4236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4237
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    .line 4250
    new-instance v1, Ljava/lang/RuntimeException;

    .line 4251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4250
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4239
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 4240
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4240
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 4255
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4235
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4245
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 4246
    .restart local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 4258
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v11    # "type":I
    :cond_0
    return-object v10

    .line 4237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3699
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3701
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3708
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method private responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 3716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3717
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3719
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3726
    .local v0, "s":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v0, :cond_0

    .line 3727
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 3726
    :goto_0
    invoke-direct {v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-object v4

    .line 3727
    :cond_0
    check-cast v3, [B

    goto :goto_0
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3734
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 3735
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 3736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 3737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 3738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 3739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 3740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3743
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 3744
    const/16 v3, 0x8

    .line 3746
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 3747
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3748
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 3749
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 3750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 3751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 3752
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 3753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 3754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 3755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3757
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 3747
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3759
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3581
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 3583
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3587
    :cond_0
    return-object v2
.end method

.method private responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4283
    .local v1, "capacityResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4284
    .local v0, "capacityDownKbps":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 4285
    .local v2, "confidenceLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 4287
    .local v3, "lceSuspended":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LCE capacity information received: capacity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4289
    const-string/jumbo v5, " confidence="

    .line 4287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4290
    const-string/jumbo v5, " lceSuspended="

    .line 4287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4295
    return-object v1
.end method

.method private responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    .local v2, "statusResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 4301
    .local v1, "lceStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4303
    .local v0, "actualInterval":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LCE status information received: lceStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4305
    const-string/jumbo v4, " actualInterval="

    .line 4303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4308
    return-object v2
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3971
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3974
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 3975
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3977
    array-length v5, v2

    .line 3976
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3977
    const-string/jumbo v5, " strings, expected multible of 4"

    .line 3976
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3975
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3980
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3982
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3984
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 3985
    add-int/lit8 v4, v0, 0x0

    aget-object v4, v2, v4

    .line 3986
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    .line 3987
    add-int/lit8 v6, v0, 0x2

    aget-object v6, v2, v6

    .line 3988
    add-int/lit8 v7, v0, 0x3

    aget-object v7, v2, v7

    .line 3984
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3982
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 3991
    :cond_1
    return-object v1
.end method

.method private responsePcoData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4356
    new-instance v0, Landroid/telephony/PcoData;

    invoke-direct {v0, p1}, Landroid/telephony/PcoData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4264
    .local v7, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4265
    .local v2, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4266
    .local v3, "phase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4267
    .local v4, "rat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4268
    .local v5, "logicModemUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4270
    .local v6, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseRadioCapability: version= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4271
    const-string/jumbo v8, ", session="

    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4272
    const-string/jumbo v8, ", phase="

    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4273
    const-string/jumbo v8, ", rat="

    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4274
    const-string/jumbo v8, ", logicModemUuid="

    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4275
    const-string/jumbo v8, ", status="

    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4276
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    .line 4277
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4276
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 4278
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    return-object v0
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3673
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3675
    .local v0, "response":[B
    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3684
    .local v2, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3685
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3687
    .local v1, "errorCode":I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 3689
    .local v3, "response":Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x5

    .line 3917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3918
    .local v6, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3923
    .local v4, "num":I
    if-ge v6, v9, :cond_5

    .line 3924
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3925
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3926
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3927
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3928
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3929
    new-instance v7, Ljava/lang/RuntimeException;

    .line 3930
    const-string/jumbo v8, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    .line 3929
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3932
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3933
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3934
    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3936
    :cond_1
    const/4 v7, 0x4

    if-lt v4, v7, :cond_2

    .line 3937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3938
    .local v2, "dnses":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseSetupDataCall got dnses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3939
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3940
    const-string/jumbo v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 3943
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v9, :cond_3

    .line 3944
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3945
    .local v3, "gateways":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseSetupDataCall got gateways="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3946
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3947
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 3950
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x6

    if-lt v4, v7, :cond_4

    .line 3951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3952
    .local v5, "pcscf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseSetupDataCall got pcscf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3953
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3954
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 3966
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v5    # "pcscf":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    .line 3958
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_5
    const/4 v7, 0x1

    if-eq v4, v7, :cond_6

    .line 3959
    new-instance v7, Ljava/lang/RuntimeException;

    .line 3960
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RIL_REQUEST_SETUP_DATA_CALL response expecting 1 RIL_Data_Call_response_v5 got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3959
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3963
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4099
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 4100
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3764
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 3766
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 3767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 3768
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 3769
    return-object v0
.end method

.method private responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4602
    new-instance v2, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 4604
    .local v2, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 4605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 4606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 4607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 4608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 4609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4611
    .local v1, "num":I
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4612
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v3

    .line 4611
    if-eqz v3, :cond_0

    .line 4613
    new-array v3, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 4615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4616
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v3, v0

    .line 4618
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 4619
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 4620
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 4621
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 4622
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 4623
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 4625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SS Data] CF Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4628
    .end local v0    # "i":I
    :cond_0
    new-array v3, v1, [I

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    .line 4629
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4630
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 4631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SS Data] SS Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4629
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4635
    :cond_1
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3655
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3663
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3665
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3630
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 3632
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 3633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 3634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 3635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 3636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 3638
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4518
    packed-switch p0, :pswitch_data_0

    .line 4569
    :pswitch_0
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 4519
    :pswitch_1
    const-string/jumbo v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object v0

    .line 4520
    :pswitch_2
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 4521
    :pswitch_3
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    return-object v0

    .line 4522
    :pswitch_4
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS"

    return-object v0

    .line 4523
    :pswitch_5
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object v0

    .line 4524
    :pswitch_6
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object v0

    .line 4525
    :pswitch_7
    const-string/jumbo v0, "UNSOL_ON_USSD"

    return-object v0

    .line 4526
    :pswitch_8
    const-string/jumbo v0, "UNSOL_ON_USSD_REQUEST"

    return-object v0

    .line 4527
    :pswitch_9
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object v0

    .line 4528
    :pswitch_a
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    return-object v0

    .line 4529
    :pswitch_b
    const-string/jumbo v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 4530
    :pswitch_c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4531
    :pswitch_d
    const-string/jumbo v0, "UNSOL_STK_SESSION_END"

    return-object v0

    .line 4532
    :pswitch_e
    const-string/jumbo v0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object v0

    .line 4533
    :pswitch_f
    const-string/jumbo v0, "UNSOL_STK_EVENT_NOTIFY"

    return-object v0

    .line 4534
    :pswitch_10
    const-string/jumbo v0, "UNSOL_STK_CALL_SETUP"

    return-object v0

    .line 4535
    :pswitch_11
    const-string/jumbo v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object v0

    .line 4536
    :pswitch_12
    const-string/jumbo v0, "UNSOL_SIM_REFRESH"

    return-object v0

    .line 4537
    :pswitch_13
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 4538
    :pswitch_14
    const-string/jumbo v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object v0

    .line 4539
    :pswitch_15
    const-string/jumbo v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object v0

    .line 4540
    :pswitch_16
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object v0

    .line 4541
    :pswitch_17
    const-string/jumbo v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object v0

    .line 4542
    :pswitch_18
    const-string/jumbo v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object v0

    .line 4543
    :pswitch_19
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4544
    :pswitch_1a
    const-string/jumbo v0, "UNSOL_CDMA_CALL_WAITING"

    return-object v0

    .line 4545
    :pswitch_1b
    const-string/jumbo v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object v0

    .line 4546
    :pswitch_1c
    const-string/jumbo v0, "UNSOL_CDMA_INFO_REC"

    return-object v0

    .line 4547
    :pswitch_1d
    const-string/jumbo v0, "UNSOL_OEM_HOOK_RAW"

    return-object v0

    .line 4548
    :pswitch_1e
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 4549
    :pswitch_1f
    const-string/jumbo v0, "UNSOL_RESEND_INCALL_MUTE"

    return-object v0

    .line 4550
    :pswitch_20
    const-string/jumbo v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object v0

    .line 4551
    :pswitch_21
    const-string/jumbo v0, "UNSOL_CDMA_PRL_CHANGED"

    return-object v0

    .line 4552
    :pswitch_22
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4553
    :pswitch_23
    const-string/jumbo v0, "UNSOL_RIL_CONNECTED"

    return-object v0

    .line 4554
    :pswitch_24
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    .line 4555
    :pswitch_25
    const-string/jumbo v0, "UNSOL_CELL_INFO_LIST"

    return-object v0

    .line 4557
    :pswitch_26
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 4559
    :pswitch_27
    const-string/jumbo v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object v0

    .line 4561
    :pswitch_28
    const-string/jumbo v0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object v0

    .line 4562
    :pswitch_29
    const-string/jumbo v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object v0

    .line 4564
    :pswitch_2a
    const-string/jumbo v0, "RIL_UNSOL_RADIO_CAPABILITY"

    return-object v0

    .line 4565
    :pswitch_2b
    const-string/jumbo v0, "UNSOL_ON_SS"

    return-object v0

    .line 4566
    :pswitch_2c
    const-string/jumbo v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object v0

    .line 4567
    :pswitch_2d
    const-string/jumbo v0, "UNSOL_LCE_INFO_RECV"

    return-object v0

    .line 4568
    :pswitch_2e
    const-string/jumbo v0, "UNSOL_PCO_DATA"

    return-object v0

    .line 4518
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3602
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 21
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2961
    if-nez p1, :cond_0

    const-string/jumbo v19, ""

    return-object v19

    .line 2962
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 2979
    move-object/from16 v0, p1

    instance-of v0, v0, [I

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v14, p1

    .line 2980
    check-cast v14, [I

    .line 2981
    .local v14, "intArray":[I
    array-length v15, v14

    .line 2982
    .local v15, "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v17, "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_1

    .line 2984
    const/16 v19, 0x0

    .line 2985
    const/4 v12, 0x1

    .local v12, "i":I
    aget v19, v14, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v13, v12

    .line 2986
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 2987
    const-string/jumbo v19, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    aget v20, v14, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_0

    .line 2972
    .end local v13    # "i":I
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :sswitch_0
    const-string/jumbo v19, ""

    return-object v19

    .line 2990
    .restart local v14    # "intArray":[I
    .restart local v15    # "length":I
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3040
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .local v16, "s":Ljava/lang/String;
    :goto_1
    return-object v16

    .line 2992
    .end local v16    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v18, p1

    .line 2993
    check-cast v18, [Ljava/lang/String;

    .line 2994
    .local v18, "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v15, v0

    .line 2995
    .restart local v15    # "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2996
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_3

    .line 2997
    const/16 v19, 0x0

    .line 2998
    const/4 v12, 0x1

    .restart local v12    # "i":I
    aget-object v19, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    .line 2999
    .end local v12    # "i":I
    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v15, :cond_3

    .line 3000
    const-string/jumbo v19, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    aget-object v20, v18, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_2

    .line 3003
    .end local v13    # "i":I
    :cond_3
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto :goto_1

    .line 3005
    .end local v15    # "length":I
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v19, 0x9

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v2, p1

    .line 3006
    check-cast v2, Ljava/util/ArrayList;

    .line 3007
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3008
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "dc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 3009
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3011
    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_5
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    .line 3013
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v8    # "dc$iterator":Ljava/util/Iterator;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v19, 0x4b

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v5, p1

    .line 3014
    check-cast v5, Ljava/util/ArrayList;

    .line 3015
    .local v5, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3016
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cell$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 3017
    .local v3, "cell":Landroid/telephony/NeighboringCellInfo;
    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3019
    .end local v3    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_7
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    .line 3021
    .end local v4    # "cell$iterator":Ljava/util/Iterator;
    .end local v5    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v19, 0x21

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v6, p1

    .line 3022
    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3023
    .local v6, "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v15, v6

    .line 3024
    .restart local v15    # "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3025
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v15, :cond_9

    .line 3026
    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v6, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 3028
    :cond_9
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    .line 3030
    .end local v6    # "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v12    # "i":I
    .end local v15    # "length":I
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const/16 v19, 0x7c

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v11, p1

    .line 3031
    check-cast v11, Ljava/util/ArrayList;

    .line 3032
    .local v11, "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3033
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "hwcfg$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HardwareConfig;

    .line 3034
    .local v9, "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3036
    .end local v9    # "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    .line 3038
    .end local v10    # "hwcfg$iterator":Ljava/util/Iterator;
    .end local v11    # "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    .line 2962
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4574
    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4575
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4574
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    return-void

    .line 4575
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4579
    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4580
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4579
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    return-void

    .line 4580
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 4
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2556
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 2557
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2558
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2559
    return-void

    .line 2562
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2563
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 2564
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2553
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2421
    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2422
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2426
    const-string/jumbo v2, "> "

    .line 2425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2426
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2426
    const-string/jumbo v2, ": "

    .line 2425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2428
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2420
    return-void

    .line 2423
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2455
    return-void
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 1631
    and-int/lit8 v0, p1, 0x7

    packed-switch v0, :pswitch_data_0

    .line 1643
    :pswitch_0
    return v1

    .line 1633
    :pswitch_1
    return v1

    .line 1635
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 1637
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1639
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 1631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 4584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4583
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 4588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4587
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4591
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4595
    return-void
.end method

.method private updateScreenState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2408
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 2409
    .local v0, "oldState":I
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 2411
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    if-eq v1, v0, :cond_1

    .line 2416
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    if-ne v1, v3, :cond_3

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    .line 2407
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 2410
    goto :goto_0

    :cond_3
    move v3, v2

    .line 2416
    goto :goto_1
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1232
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1234
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V

    .line 1238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1230
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1771
    const/16 v1, 0x6a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1773
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1775
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1778
    const/16 v2, 0x20

    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1778
    const-string/jumbo v2, " ["

    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1778
    const/16 v2, 0x5d

    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1780
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1769
    return-void

    .line 1774
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1755
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1757
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1762
    const-string/jumbo v2, " "

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1762
    const-string/jumbo v2, " "

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1764
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1753
    return-void

    .line 1757
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1739
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1741
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1746
    const-string/jumbo v2, " "

    .line 1745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1746
    const-string/jumbo v2, " "

    .line 1745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1748
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1737
    return-void

    .line 1742
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2077
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2079
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2080
    const-string/jumbo v2, "> "

    .line 2079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2080
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2082
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2075
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1003
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1005
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1007
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1009
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1010
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1002
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 959
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 980
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 988
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 990
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 992
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 985
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 967
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 969
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 971
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 973
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 974
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 964
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1187
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1189
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1185
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1679
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1681
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1683
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1686
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1686
    const-string/jumbo v2, " "

    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1686
    const-string/jumbo v2, " "

    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1688
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V

    .line 1691
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1677
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1578
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1581
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1577
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1563
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1566
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1562
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1056
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1063
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1065
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1066
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    if-nez p3, :cond_0

    .line 1069
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(IIILcom/android/internal/telephony/UUSInfo;)V

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1062
    return-void

    .line 1071
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 4946
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4947
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mWakeLockCount="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 4949
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4950
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4952
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 4953
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4946
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4945
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    monitor-exit v4

    .line 4956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4831
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4833
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4835
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4830
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1256
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1258
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1254
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5199
    const/16 v1, 0x89

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5201
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5203
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5198
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1921
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1924
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1919
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1986
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1988
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1990
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1984
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4653
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4655
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4657
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4652
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1823
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1825
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1827
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1821
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4774
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4776
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4773
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4719
    const/16 v1, 0x68

    .line 4718
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4721
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4723
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4717
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4868
    const/16 v1, 0x6d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4870
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4872
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4867
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1031
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1033
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1030
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1047
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1049
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1046
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1350
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1352
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1354
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1348
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4643
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4645
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4647
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4642
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2344
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2346
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2343
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1371
    const/16 v1, 0x7c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1373
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1370
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1108
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1110
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1107
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1118
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1120
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1117
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1086
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1093
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1095
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1099
    const-string/jumbo v2, "> getIMSI: "

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1099
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1100
    const-string/jumbo v2, " aid: "

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1092
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 839
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 841
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 836
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 814
    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 817
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 813
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1267
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1269
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1271
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1265
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1291
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1293
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1295
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1289
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1280
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5151
    const/16 v2, 0x87

    invoke-static {v2, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5153
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5155
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5157
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5158
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5159
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5160
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5150
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1317
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1319
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1321
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1315
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2263
    const/16 v1, 0x4b

    .line 2262
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2265
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2261
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1909
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1912
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1914
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1907
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1361
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1363
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1359
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 1040
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2250
    const/16 v1, 0x4a

    .line 2249
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2252
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2254
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2248
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1208
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1210
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1207
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5107
    const/16 v1, 0x82

    .line 5106
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5109
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5111
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5105
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1328
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1330
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1326
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2290
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2292
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2289
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 805
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 807
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 804
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1339
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1341
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1337
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2212
    const/16 v4, 0x47

    .line 2211
    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2215
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2217
    new-array v0, v2, [I

    .line 2218
    .local v0, "param":[I
    if-eqz p1, :cond_0

    :goto_0
    aput v2, v0, v3

    .line 2219
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2220
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2209
    return-void

    :cond_0
    move v2, v3

    .line 2218
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupConnection: gsmIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1131
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    .line 1138
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1128
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1162
    const/16 v1, 0xe

    .line 1161
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1164
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    .line 1168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1159
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1147
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1150
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    .line 1154
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1146
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4979
    const/16 v1, 0x74

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4980
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4981
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4986
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4978
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 1787
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1786
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 1796
    const/16 v1, 0x1c

    invoke-static {v1, p10}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1798
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1801
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1805
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1806
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1809
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1810
    const-string/jumbo v2, " 0x"

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1810
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1811
    const-string/jumbo v2, " 0x"

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1811
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1811
    const-string/jumbo v2, " "

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1812
    const-string/jumbo v2, " path: "

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1812
    const-string/jumbo v2, ","

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    const-string/jumbo v2, ","

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    const-string/jumbo v2, ","

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1814
    const-string/jumbo v2, " aid: "

    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1816
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1792
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4965
    const/16 v1, 0x73

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4966
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4971
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4964
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 5010
    const/16 v1, 0x72

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 5009
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 4995
    if-gtz p1, :cond_0

    .line 4996
    new-instance v0, Ljava/lang/RuntimeException;

    .line 4997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4996
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5000
    :cond_0
    const/16 v1, 0x75

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 4994
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2099
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2101
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2102
    const-string/jumbo v2, "["

    .line 2101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2102
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2102
    const-string/jumbo v2, "]"

    .line 2101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2104
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2106
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2097
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2113
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2115
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2117
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2111
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5036
    const/16 v1, 0x76

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5038
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5041
    const/16 v2, 0x20

    .line 5040
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5043
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5035
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5073
    const/16 v1, 0x79

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5075
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5076
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5079
    const/16 v2, 0x20

    .line 5078
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5072
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5061
    const/16 v1, 0x78

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5063
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5066
    const-string/jumbo v2, " ("

    .line 5065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5066
    array-length v2, p1

    .line 5065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5066
    const-string/jumbo v2, " bytes)"

    .line 5065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5068
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5060
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5048
    const/16 v1, 0x77

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5050
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5051
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5054
    const/16 v2, 0x20

    .line 5053
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5054
    const-string/jumbo v2, ": "

    .line 5053
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5056
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5047
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    .line 2433
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5140
    const/16 v1, 0x86

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5142
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5139
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2153
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2156
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2158
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2151
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1974
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1976
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1978
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1972
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1955
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1957
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1961
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1962
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1965
    const-string/jumbo v2, " "

    .line 1964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1965
    const-string/jumbo v2, " "

    .line 1964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1967
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1953
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1851
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1853
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    const-string/jumbo v2, " "

    .line 1856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1859
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1849
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4672
    const/16 v1, 0x4f

    .line 4671
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4674
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4676
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4670
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1997
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1996
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2004
    const/16 v1, 0x2a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2006
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2007
    const-string/jumbo v2, " ["

    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2007
    const-string/jumbo v2, " "

    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2008
    const-string/jumbo v2, " "

    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2008
    const-string/jumbo v2, "]"

    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2011
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2014
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2016
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2017
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2019
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2003
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4732
    const/16 v1, 0x51

    .line 4731
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4734
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4736
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4730
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1245
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1247
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1249
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1243
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2317
    const/16 v2, 0x66

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2318
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2322
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2322
    const-string/jumbo v2, ": "

    .line 2321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2324
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2316
    return-void

    .line 2319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2332
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2334
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2336
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2331
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 4852
    const/16 v1, 0x7d

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4854
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4856
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4860
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4851
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4840
    const/16 v1, 0x69

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4842
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4846
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4839
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1712
    const/16 v1, 0x81

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1715
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1717
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1711
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2089
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2091
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2093
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2087
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1418
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1420
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1422
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1423
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1426
    const-string/jumbo v2, " : "

    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1417
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4762
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4764
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4767
    const-string/jumbo v2, " : "

    .line 4766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4769
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4761
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 5
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 1512
    const/16 v1, 0x57

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1514
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    .line 1521
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1510
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1382
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1384
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1386
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1388
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1380
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2181
    const/16 v1, 0x45

    .line 2180
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2183
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2185
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2186
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2179
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2195
    const/16 v1, 0x6b

    .line 2194
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2197
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2198
    const/16 v2, 0x5b

    .line 2197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2198
    const/16 v2, 0x5d

    .line 2197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2200
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2193
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 6
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    .line 1545
    const/16 v1, 0x71

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1547
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1549
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1555
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    .line 1558
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1544
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1527
    const/16 v1, 0x71

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1529
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1531
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    .line 1540
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1526
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1441
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1443
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    .line 1450
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1439
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1457
    const/16 v1, 0x1a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1459
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    .line 1466
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1455
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2167
    const/16 v1, 0x46

    .line 2166
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2169
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2171
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2165
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2059
    const/16 v2, 0x1d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2062
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v0, "*******"

    .line 2064
    .local v0, "logUssdString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2065
    const-string/jumbo v3, " "

    .line 2064
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2068
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2057
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1217
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1219
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1220
    const-string/jumbo v2, " "

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1222
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1215
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 7
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5165
    .local p1, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const/16 v5, 0x88

    invoke-static {v5, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 5166
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5167
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/carrier/CarrierIdentifier;

    .line 5169
    .local v0, "ci":Landroid/service/carrier/CarrierIdentifier;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5170
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5171
    const/4 v3, 0x0

    .line 5172
    .local v3, "matchType":I
    const/4 v2, 0x0

    .line 5173
    .local v2, "matchData":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5174
    const/4 v3, 0x1

    .line 5175
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v2

    .line 5186
    .end local v2    # "matchData":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5187
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 5176
    .restart local v2    # "matchData":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5177
    const/4 v3, 0x2

    .line 5178
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v2

    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    .line 5179
    .local v2, "matchData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5180
    const/4 v3, 0x3

    .line 5181
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v2

    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    .line 5182
    .local v2, "matchData":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5183
    const/4 v3, 0x4

    .line 5184
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v2

    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    .line 5192
    .end local v0    # "ci":Landroid/service/carrier/CarrierIdentifier;
    .end local v2    # "matchData":Ljava/lang/String;
    .end local v3    # "matchType":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5194
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5164
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2131
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2137
    const-string/jumbo v2, " "

    .line 2136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2139
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2129
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1834
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1837
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1842
    const-string/jumbo v2, " "

    .line 1841
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1844
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1832
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1934
    const/16 v1, 0x22

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1936
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1944
    const-string/jumbo v2, " "

    .line 1943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1944
    const-string/jumbo v2, " "

    .line 1943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1944
    const-string/jumbo v2, " "

    .line 1943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1947
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1932
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1866
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1868
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1869
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1873
    const-string/jumbo v2, " "

    .line 1872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1873
    const-string/jumbo v2, ", "

    .line 1872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1864
    return-void

    .line 1869
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4816
    const/16 v2, 0x5e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4818
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4819
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4823
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4815
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 11
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 4781
    const/16 v5, 0x5d

    invoke-static {v5, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 4785
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4786
    .local v2, "processedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;>;"
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, p1, v5

    .line 4787
    .local v0, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v8

    if-gt v1, v8, :cond_0

    .line 4788
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 4790
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    .line 4791
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    .line 4788
    invoke-direct {v8, v1, v1, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4787
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4786
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4795
    .end local v0    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 4796
    .local v3, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    array-length v7, v3

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4797
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 4798
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v7, v3, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4799
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v7, v3, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4800
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4797
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v5, v6

    .line 4800
    goto :goto_3

    .line 4804
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4805
    const-string/jumbo v6, " with "

    .line 4804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4805
    array-length v6, v3

    .line 4804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4805
    const-string/jumbo v6, " configs : "

    .line 4804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4806
    const/4 v1, 0x0

    :goto_4
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 4807
    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4806
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4811
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4780
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4685
    const/16 v1, 0x4e

    .line 4684
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4687
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4688
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4691
    const-string/jumbo v2, " : "

    .line 4690
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4693
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4683
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4702
    const/16 v1, 0x4d

    .line 4701
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4704
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4705
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4708
    const-string/jumbo v2, " : "

    .line 4707
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4710
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4700
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCellInfoListRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4881
    const/16 v1, 0x6e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4883
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4884
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4888
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4879
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 865
    const/16 v2, 0x7b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 867
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    const-string/jumbo v3, " allowed: "

    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 871
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 864
    return-void

    .line 872
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 4
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4911
    const-string/jumbo v2, "Set RIL_REQUEST_SET_DATA_PROFILE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4913
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4914
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;

    .line 4917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4918
    const-string/jumbo v3, " with "

    .line 4917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4918
    const-string/jumbo v3, " Data Profiles : "

    .line 4917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4920
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4924
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4910
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2026
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2025
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2035
    const/16 v2, 0x2b

    invoke-static {v2, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2037
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2038
    const-string/jumbo v3, " ["

    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2038
    const-string/jumbo v3, " "

    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2039
    const-string/jumbo v3, " "

    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2039
    const-string/jumbo v3, " "

    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2039
    const-string/jumbo v3, "]"

    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2042
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    .line 2046
    .local v0, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2047
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2048
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2049
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2051
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2032
    return-void

    .line 2045
    .end local v0    # "lockString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "0"

    .restart local v0    # "lockString":Ljava/lang/String;
    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2385
    const/16 v2, 0x5b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2387
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2392
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2384
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2356
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 2358
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    .line 2359
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2362
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2365
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    iget-object v4, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2366
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2370
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2371
    const-string/jumbo v4, " with "

    .line 2370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2371
    const-string/jumbo v4, " configs : "

    .line 2370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2372
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2373
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2372
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2377
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2355
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 4893
    const/16 v1, 0x6f

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4895
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4897
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4898
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4899
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4901
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4904
    const-string/jumbo v2, ", apn:"

    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4904
    const-string/jumbo v2, ", protocol:"

    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4904
    const-string/jumbo v2, ", authType:"

    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4905
    const-string/jumbo v2, ", username:"

    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4905
    const-string/jumbo v2, ", password:"

    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4907
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4892
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2275
    const/16 v2, 0x4c

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2276
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2280
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2280
    const-string/jumbo v2, ": "

    .line 2279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2274
    return-void

    .line 2277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1302
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1304
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1305
    const-string/jumbo v3, " "

    .line 1304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1307
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1300
    return-void

    .line 1308
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1882
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1885
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1887
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1880
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1894
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1897
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1898
    const-string/jumbo v2, " "

    .line 1897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1892
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 824
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    .line 830
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 828
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 823
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 4662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4663
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 4661
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2229
    const/16 v1, 0x49

    .line 2228
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2231
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 2236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2237
    const-string/jumbo v2, " : "

    .line 2236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2239
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 2241
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2227
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1197
    const/16 v2, 0x52

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1200
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1196
    return-void

    .line 1201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 3
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5087
    const/16 v1, 0x83

    .line 5086
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5089
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5090
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5091
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5092
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5093
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5094
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5098
    const-string/jumbo v2, " "

    .line 5097
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5098
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5097
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5101
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5085
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1697
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1699
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1704
    if-eqz p1, :cond_1

    const-string/jumbo v1, " on"

    .line 1703
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1707
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1696
    return-void

    .line 1700
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1704
    :cond_1
    const-string/jumbo v1, " off"

    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2302
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2304
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2307
    const-string/jumbo v2, " : "

    .line 2306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2301
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1724
    const/16 v2, 0x3e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1726
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1730
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1722
    return-void

    .line 1727
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4745
    const/16 v1, 0x50

    .line 4744
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4747
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4748
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4751
    const-string/jumbo v2, " : "

    .line 4750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4753
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4743
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 849
    const/16 v1, 0x7a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 851
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string/jumbo v2, " slot: "

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string/jumbo v2, " appIndex: "

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    const-string/jumbo v2, " subId: "

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    const-string/jumbo v2, " subStatus: "

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 847
    return-void
.end method

.method public setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "radioTechnology"    # I
    .param p2, "profile"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 1652
    const/16 v1, 0x1b

    move-object/from16 v0, p8

    invoke-static {v1, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    .line 1654
    .local v9, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1657
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1658
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1659
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1660
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1661
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1662
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1665
    iget v2, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1665
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1665
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1666
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1666
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1666
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1667
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1667
    const-string/jumbo v2, " "

    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1669
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V

    .line 1672
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1650
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1395
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1397
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1399
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1393
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5116
    const/16 v1, 0x84

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5118
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5119
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5120
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5126
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5115
    return-void

    .line 5120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1408
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1410
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1412
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1406
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5131
    const/16 v1, 0x85

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5135
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5130
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 877
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 918
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 926
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 928
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 930
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 923
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 885
    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 887
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 889
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 891
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 882
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 897
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 938
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 946
    const/4 v1, 0x5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 948
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 950
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 943
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 905
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 907
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 909
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 902
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1018
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1020
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1022
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1017
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1176
    const/16 v1, 0xf

    .line 1175
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1178
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1173
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .prologue
    .line 4932
    const-string/jumbo v0, "testingEmergencyCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4933
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4931
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1611
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1613
    const/16 v1, 0x60

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1616
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1610
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1595
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1598
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1600
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1592
    return-void
.end method
