.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$12;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 343
    new-instance v0, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->a:Ljava/lang/String;

    .line 2113
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->a:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2129
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 3065
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 348
    const-string v2, "wx_title"

    iget-object v3, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3101
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 350
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 352
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x8fd

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 354
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 3191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 354
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "OWN"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 3295
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "subscription_status"

    const-string v2, "\u5df2\u8ba2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 361
    return-void

    .line 358
    :cond_0
    const-string v1, "subscription_status"

    const-string v2, "\u672a\u8ba2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
