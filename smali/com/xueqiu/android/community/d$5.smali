.class final Lcom/xueqiu/android/community/d$5;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/xueqiu/android/community/d$5;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/community/d$5;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 215
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 216
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/d$5;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const-string v2, "extra_user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/community/d$5;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/d;->a(Landroid/content/Intent;)V

    .line 219
    return-void
.end method
