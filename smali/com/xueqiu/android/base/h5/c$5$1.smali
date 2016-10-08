.class final Lcom/xueqiu/android/base/h5/c$5$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/c$5;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/c$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c$5;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$5$1;->a:Lcom/xueqiu/android/base/h5/c$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 1285
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1286
    return-void
.end method
