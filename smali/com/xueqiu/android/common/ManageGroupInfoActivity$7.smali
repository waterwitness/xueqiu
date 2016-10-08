.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;
.super Ljava/lang/Object;
.source "ManageGroupInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(ILcom/xueqiu/android/common/model/BaseGroupInfo;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;->b:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    const/4 v2, 0x0

    .line 260
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;->b:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 262
    if-eqz v0, :cond_0

    iget-object v4, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    .line 270
    iget-boolean v0, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    if-nez v0, :cond_1

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    .line 274
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method
