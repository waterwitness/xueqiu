.class final Lcom/xueqiu/android/community/UserHotStatusActivity$1;
.super Ljava/lang/Object;
.source "UserHotStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserHotStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserHotStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserHotStatusActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/community/UserHotStatusActivity$1;->a:Lcom/xueqiu/android/community/UserHotStatusActivity;

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
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity$1;->a:Lcom/xueqiu/android/community/UserHotStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserHotStatusActivity;->a(Lcom/xueqiu/android/community/UserHotStatusActivity;)Lcom/xueqiu/android/community/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 53
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/UserHotStatusActivity$1;->a:Lcom/xueqiu/android/community/UserHotStatusActivity;

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity$1;->a:Lcom/xueqiu/android/community/UserHotStatusActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UserHotStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_0
    return-void
.end method
