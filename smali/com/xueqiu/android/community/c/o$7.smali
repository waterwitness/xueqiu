.class final Lcom/xueqiu/android/community/c/o$7;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->a(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$7;->b:Lcom/xueqiu/android/community/c/o;

    iput-object p2, p0, Lcom/xueqiu/android/community/c/o$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public final b_(I)V
    .locals 6

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$7;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/c/o;->b(Lcom/xueqiu/android/community/c/o;J)J

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$7;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/o;->e(Lcom/xueqiu/android/community/c/o;I)I

    .line 430
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v0, 0x44c

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 431
    const-string v2, "ad_id"

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$7;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v0, "pos"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 434
    return-void
.end method
