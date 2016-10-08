.class final Lcom/xueqiu/android/common/ImageActivity$1;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ImageActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ImageActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/common/ImageActivity$1;->a:Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$1;->a:Lcom/xueqiu/android/common/ImageActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ImageActivity;->finish()V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$1;->a:Lcom/xueqiu/android/common/ImageActivity;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/ImageActivity;->overridePendingTransition(II)V

    .line 72
    return-void
.end method
