.class final Lcom/xueqiu/android/trade/d/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDD)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;DDDLjava/lang/String;)V
    .locals 1

    .prologue
    .line 793
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    iput-wide p3, p0, Lcom/xueqiu/android/trade/d/a$2;->a:D

    iput-wide p5, p0, Lcom/xueqiu/android/trade/d/a$2;->b:D

    iput-wide p7, p0, Lcom/xueqiu/android/trade/d/a$2;->c:D

    iput-object p9, p0, Lcom/xueqiu/android/trade/d/a$2;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 844
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    .line 844
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->z()V

    .line 846
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a$2;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 847
    const-string v0, ""

    .line 851
    :goto_0
    const-string v2, "\u80a1\u7968\uff1a%s %s \n\u4ef7\u683c\uff1a%s \n\u6570\u91cf\uff1a%s \n\u91d1\u989d\uff1a%s \n%s"

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->d:Ljava/lang/String;

    .line 852
    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 852
    aput-object v1, v3, v5

    const/4 v4, 0x2

    const-string v1, "MKT"

    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v5, v5, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 852
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5e02\u4ef7"

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a$2;->c:D

    double-to-int v4, v4

    .line 853
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-wide v4, v4, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 854
    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    aput-object v0, v3, v1

    .line 851
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 855
    new-instance v3, Lcom/xueqiu/android/trade/d/a$2$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/d/a$2$2;-><init>(Lcom/xueqiu/android/trade/d/a$2;)V

    invoke-static {v2, v3}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$2;->d:Ljava/lang/String;

    .line 880
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    .line 881
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 882
    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 883
    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 9069
    iput-object v0, v1, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 884
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 884
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 885
    return-void

    .line 849
    :cond_0
    const-string v0, "\u624b\u7eed\u8d39\uff1a%s\uff08\u53c2\u8003\uff09"

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a$2;->a:D

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 852
    :cond_1
    iget-wide v6, p0, Lcom/xueqiu/android/trade/d/a$2;->b:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 793
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 10797
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    const-string v1, "rewardOwnerId"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 11069
    iput-object v1, v0, Lcom/xueqiu/android/trade/d/a;->w:Ljava/lang/String;

    .line 10798
    const-string v0, "faceValue"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 10799
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    .line 10799
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->z()V

    .line 10801
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a$2;->a:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 10802
    const-string v0, ""

    .line 10806
    :goto_0
    const-string v3, "\u80a1\u7968\uff1a%s %s \n\u4ef7\u683c\uff1a%s \n\u6570\u91cf\uff1a%s \n\u91d1\u989d\uff1a%s \n%s\u4ea4\u6613\u4f53\u9a8c\u5238\uff1a%s"

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 13069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->d:Ljava/lang/String;

    .line 10807
    aput-object v1, v4, v6

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 14069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 10807
    aput-object v1, v4, v7

    const/4 v5, 0x2

    const-string v1, "MKT"

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 15069
    iget-object v6, v6, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 10807
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5e02\u4ef7"

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget-wide v6, p0, Lcom/xueqiu/android/trade/d/a$2;->c:D

    double-to-int v5, v6

    .line 10808
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 16069
    iget-wide v6, v5, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 10809
    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x5

    aput-object v0, v4, v1

    const/4 v0, 0x6

    rsub-int/lit8 v1, v2, 0x0

    int-to-double v6, v1

    .line 10810
    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 10806
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10811
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 17069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 10811
    new-instance v3, Lcom/xueqiu/android/trade/d/a$2$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/d/a$2$1;-><init>(Lcom/xueqiu/android/trade/d/a$2;)V

    invoke-static {v2, v3}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$2;->d:Ljava/lang/String;

    .line 10835
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    .line 10836
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 18069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 10837
    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 19069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 10838
    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 20069
    iput-object v0, v1, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 10839
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 21069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 10839
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 793
    return-void

    .line 10804
    :cond_0
    const-string v0, "\u624b\u7eed\u8d39\uff1a%s\uff08\u53c2\u8003\uff09\n"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a$2;->a:D

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 10807
    :cond_1
    iget-wide v6, p0, Lcom/xueqiu/android/trade/d/a$2;->b:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method
