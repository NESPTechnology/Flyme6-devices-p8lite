.class Lcom/android/internal/telephony/imsphone/ImsPhone$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->getResultCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 1514
    const-string/jumbo v9, "alertTitle"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1515
    .local v8, "title":Ljava/lang/CharSequence;
    const-string/jumbo v9, "alertMessage"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1516
    .local v0, "messageAlert":Ljava/lang/CharSequence;
    const-string/jumbo v9, "notificationMessage"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1518
    .local v1, "messageNotification":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v9, "com.android.settings"

    .line 1520
    const-string/jumbo v10, "com.android.settings.Settings$WifiCallingSettingsActivity"

    .line 1519
    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    const-string/jumbo v9, "alertShow"

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1522
    const-string/jumbo v9, "alertTitle"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1523
    const-string/jumbo v9, "alertMessage"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1526
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v9

    .line 1527
    const/4 v10, 0x0

    .line 1529
    const/high16 v11, 0x8000000

    .line 1525
    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1533
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1534
    const v10, 0x108008a

    .line 1533
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1539
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v10, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    .line 1533
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1541
    .local v2, "notification":Landroid/app/Notification;
    const-string/jumbo v5, "wifi_calling"

    .line 1542
    .local v5, "notificationTag":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1545
    .local v3, "notificationId":I
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v9

    .line 1546
    const-string/jumbo v10, "notification"

    .line 1545
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1547
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v9, "wifi_calling"

    invoke-virtual {v4, v9, v12, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1508
    .end local v0    # "messageAlert":Ljava/lang/CharSequence;
    .end local v1    # "messageNotification":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "notificationId":I
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notificationTag":Ljava/lang/String;
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
