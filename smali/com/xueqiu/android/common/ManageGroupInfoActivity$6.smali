.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;
.super Ljava/lang/Object;
.source "ManageGroupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(ILcom/xueqiu/android/common/model/BaseGroupInfo;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iget-boolean v2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;->b:Z

    .line 1296
    if-eqz v2, :cond_0

    .line 1297
    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(IZ)V

    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700b5

    .line 1300
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b1

    new-instance v5, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;

    invoke-direct {v5, v1, v0, v2}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;IZ)V

    .line 1301
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 1306
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
