.class final Lcom/xueqiu/android/community/WriteStatusActivity$14;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

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
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 824
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 826
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 834
    const-string v1, "1"

    const-string v2, "type_key"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    .line 835
    const-string v2, "type_key"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

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

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {}, Lcom/xueqiu/android/community/i;->a()Lcom/xueqiu/android/community/i;

    move-result-object v2

    .line 1087
    if-eqz v0, :cond_4

    .line 1091
    iget-object v3, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1092
    iget-object v3, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1098
    :cond_3
    :goto_1
    iget-object v3, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    const-string v0, "recently_mentioned_stock"

    iget-object v3, v2, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    iget-object v2, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 1103
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 842
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_5
    iget-object v3, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 1095
    iget-object v3, v2, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 843
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    if-nez v1, :cond_7

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

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

    .line 845
    invoke-static {}, Lcom/xueqiu/android/community/i;->a()Lcom/xueqiu/android/community/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/i;->a(Ljava/util/Map;)V

    .line 846
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "id_key"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 848
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 849
    const v0, 0x7f07006f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 853
    :cond_8
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "block_status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 854
    const v0, 0x7f070048

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 856
    :cond_9
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "block_status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 857
    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "block_status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 858
    :cond_a
    const v0, 0x7f070047

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 862
    :cond_b
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc23

    invoke-direct {v2, v1, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 863
    const-string v3, "target_uid"

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "id_key"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 864
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 866
    invoke-static {}, Lcom/xueqiu/android/community/i;->a()Lcom/xueqiu/android/community/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/i;->a(Ljava/util/Map;)V

    .line 867
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-class v2, Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 868
    const-string v0, "to_pick_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->F(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    const-string v2, "user_id"

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "id_key"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$14;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v1, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
