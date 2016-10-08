.class public Lcom/xueqiu/android/base/h5/GetWebViewHeightInterface;
.super Ljava/lang/Object;
.source "GetWebViewHeightInterface.java"


# instance fields
.field mListenter:Lcom/xueqiu/android/base/h5/a;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/h5/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/GetWebViewHeightInterface;->mListenter:Lcom/xueqiu/android/base/h5/a;

    .line 18
    return-void
.end method


# virtual methods
.method public getWebViewHeight(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/GetWebViewHeightInterface;->mListenter:Lcom/xueqiu/android/base/h5/a;

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
