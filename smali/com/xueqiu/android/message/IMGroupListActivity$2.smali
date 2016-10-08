.class final Lcom/xueqiu/android/message/IMGroupListActivity$2;
.super Ljava/lang/Object;
.source "IMGroupListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/IMGroupListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/p;

.field final synthetic b:Lcom/xueqiu/android/message/IMGroupListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/IMGroupListActivity;Lcom/xueqiu/android/message/a/p;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->a:Lcom/xueqiu/android/message/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->a:Lcom/xueqiu/android/message/a/p;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 122
    if-nez v1, :cond_2

    .line 123
    new-instance v1, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 124
    invoke-virtual {v1, v4}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 125
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    move-object v0, v1

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->a(Lcom/xueqiu/android/message/IMGroupListActivity;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->b(Lcom/xueqiu/android/message/IMGroupListActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    const v3, 0x7f0700b1

    .line 132
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;-><init>(Lcom/xueqiu/android/message/IMGroupListActivity$2;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    const v2, 0x7f070409

    .line 137
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    const v2, 0x7f0701ae

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->a(Lcom/xueqiu/android/message/IMGroupListActivity;Lcom/xueqiu/android/message/model/Talk;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
