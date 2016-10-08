.class public Lcom/xueqiu/android/base/DownloadPatchService;
.super Landroid/app/IntentService;
.source "DownloadPatchService.java"


# instance fields
.field private a:Lcom/xueqiu/android/base/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "DownloadPatchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/DownloadPatchService;->a:Lcom/xueqiu/android/base/n;

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 17
    invoke-static {p0}, Lcom/xueqiu/android/base/n;->b(Landroid/content/Context;)Lcom/xueqiu/android/base/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/DownloadPatchService;->a:Lcom/xueqiu/android/base/n;

    .line 18
    iget-object v0, p0, Lcom/xueqiu/android/base/DownloadPatchService;->a:Lcom/xueqiu/android/base/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/n;->a()V

    .line 19
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/base/DownloadPatchService;->a:Lcom/xueqiu/android/base/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/n;->b()V

    .line 24
    return-void
.end method
