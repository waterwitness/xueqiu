.class final Lcom/xueqiu/android/community/UserProfileActivity$23;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->h(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 223
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->e(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 225
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->i(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xa8c

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 231
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "status_type"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$23;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->j(Lcom/xueqiu/android/community/UserProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 235
    :cond_0
    return-void
.end method
