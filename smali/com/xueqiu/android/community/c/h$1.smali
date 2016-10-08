.class final Lcom/xueqiu/android/community/c/h$1;
.super Ljava/lang/Object;
.source "HotTopicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/h;->u()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/h;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/xueqiu/android/community/c/h$1;->a:Lcom/xueqiu/android/community/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h$1;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/h;->a(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/h$1;->a:Lcom/xueqiu/android/community/c/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/h;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string v1, "status"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/h$1;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/h;->a(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h$1;->a:Lcom/xueqiu/android/community/c/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/community/c/h;->a(Landroid/content/Intent;I)V

    .line 259
    :cond_0
    return-void
.end method
