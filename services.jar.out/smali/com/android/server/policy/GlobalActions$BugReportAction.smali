.class Lcom/android/server/policy/GlobalActions$BugReportAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 420
    const v0, 0x1080372

    const v1, 0x104014e

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 419
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 478
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 479
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 477
    const v2, 0x1040154

    .line 476
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 452
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    return v3

    .line 457
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x125

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 458
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 459
    const/4 v2, 0x0

    .line 458
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return v3

    .line 460
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 427
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/GlobalActions$BugReportAction;)V

    .line 445
    const-wide/16 v2, 0x1f4

    .line 433
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method
