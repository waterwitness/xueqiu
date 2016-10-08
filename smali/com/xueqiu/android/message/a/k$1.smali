.class final Lcom/xueqiu/android/message/a/k$1;
.super Ljava/lang/Object;
.source "GroupApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Apply;

.field final synthetic b:Lcom/xueqiu/android/message/a/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/k;Lcom/xueqiu/android/message/model/Apply;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/message/a/k$1;->b:Lcom/xueqiu/android/message/a/k;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/k$1;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/k$1;->b:Lcom/xueqiu/android/message/a/k;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 67
    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    new-instance v1, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/xueqiu/android/message/a/k$1;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Apply;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 70
    const-string v2, "extra_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/message/a/k$1;->b:Lcom/xueqiu/android/message/a/k;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
