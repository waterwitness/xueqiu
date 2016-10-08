.class final Lcom/xueqiu/android/community/f$3;
.super Ljava/lang/Object;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/f;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/f;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/community/f$3;->a:Lcom/xueqiu/android/community/f;

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
    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/community/f$3;->a:Lcom/xueqiu/android/community/f;

    invoke-static {v0}, Lcom/xueqiu/android/community/f;->a(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 273
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 274
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/f$3;->a:Lcom/xueqiu/android/community/f;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const-string v2, "extra_user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/community/f$3;->a:Lcom/xueqiu/android/community/f;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/f;->a(Landroid/content/Intent;)V

    .line 277
    return-void
.end method
