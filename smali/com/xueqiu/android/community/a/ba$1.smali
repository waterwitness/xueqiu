.class final Lcom/xueqiu/android/community/a/ba$1;
.super Ljava/lang/Object;
.source "UserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ba;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/community/a/ba;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;I)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ba$1;->c:Lcom/xueqiu/android/community/a/ba;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ba$1;->a:Lcom/xueqiu/android/community/model/User;

    iput p3, p0, Lcom/xueqiu/android/community/a/ba$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 1132
    iget-object v0, v0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->isMonkeyTestVersion()Z

    move-result v0

    .line 205
    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->c:Lcom/xueqiu/android/community/a/ba;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ba;->a(Lcom/xueqiu/android/community/a/ba;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->c:Lcom/xueqiu/android/community/a/ba;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ba;->a(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->c:Lcom/xueqiu/android/community/a/ba;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ba;->b(Lcom/xueqiu/android/community/a/ba;)Lcom/xueqiu/android/common/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$1;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$1;->c:Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->notifyDataSetChanged()V

    goto :goto_0

    .line 215
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
