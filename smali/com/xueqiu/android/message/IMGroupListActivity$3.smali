.class final Lcom/xueqiu/android/message/IMGroupListActivity$3;
.super Ljava/lang/Object;
.source "IMGroupListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/IMGroupListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/IMGroupListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/IMGroupListActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$3;->a:Lcom/xueqiu/android/message/IMGroupListActivity;

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
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity$3;->a:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->c(Lcom/xueqiu/android/message/IMGroupListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 158
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 159
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity$3;->a:Lcom/xueqiu/android/message/IMGroupListActivity;

    const-class v3, Lcom/xueqiu/android/message/GroupProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string v2, "extra_group_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity$3;->a:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method
