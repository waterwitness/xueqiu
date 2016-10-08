.class final Lcom/xueqiu/android/common/ShareActivity$10;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ShareActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ShareActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/xueqiu/android/common/ShareActivity$10;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/xueqiu/android/common/w;->a()Lcom/xueqiu/android/common/w;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/common/w;->a:Lcom/xueqiu/android/common/v;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/xueqiu/android/common/w;->a()Lcom/xueqiu/android/common/w;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/common/w;->a:Lcom/xueqiu/android/common/v;

    invoke-interface {v0}, Lcom/xueqiu/android/common/v;->h()V

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity$10;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ShareActivity;->finish()V

    .line 198
    :cond_0
    return-void
.end method
