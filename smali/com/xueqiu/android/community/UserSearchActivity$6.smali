.class final Lcom/xueqiu/android/community/UserSearchActivity$6;
.super Ljava/lang/Object;
.source "UserSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

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
    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    const-string v1, "1"

    const-string v2, "type_key"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 178
    const-string v2, "type_key"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/community/i;->a()Lcom/xueqiu/android/community/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/i;->a(Ljava/util/Map;)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    const-string v2, "extra_select"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->finish()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "id_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 186
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const v0, 0x7f07006f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "block_status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    const v0, 0x7f070048

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "block_status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$6;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    .line 195
    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "block_status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    :cond_5
    const v0, 0x7f070047

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method
