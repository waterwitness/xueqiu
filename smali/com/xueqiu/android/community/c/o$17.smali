.class final Lcom/xueqiu/android/community/c/o$17;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$17;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$17;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 2152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 218
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 220
    return-void

    .line 215
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$17;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/MyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$17;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/o;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
