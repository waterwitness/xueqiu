.class final Lcom/xueqiu/android/community/c/o$19;
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
    .line 230
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$19;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$19;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$19;->a:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->k()V

    .line 236
    :cond_0
    return-void
.end method
