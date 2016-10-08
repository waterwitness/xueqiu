.class final Lcom/xueqiu/android/common/WebViewActivity$1$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/WebViewActivity$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WebViewActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity$1;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity$1$1;->a:Lcom/xueqiu/android/common/WebViewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 220
    return-void
.end method
