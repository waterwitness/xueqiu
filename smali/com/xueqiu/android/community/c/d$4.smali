.class final Lcom/xueqiu/android/community/c/d$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/xueqiu/android/community/c/d$4;->a:Lcom/xueqiu/android/community/c/d;

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
    .line 805
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$4;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 805
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 807
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/d$4;->a:Lcom/xueqiu/android/community/c/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    iget-object v2, p0, Lcom/xueqiu/android/community/c/d$4;->a:Lcom/xueqiu/android/community/c/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/xueqiu/android/community/c/d;->a(Landroid/content/Intent;I)V

    .line 813
    :cond_0
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x514

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 814
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 815
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 816
    return-void
.end method
