.class final Lcom/xueqiu/android/community/TopicDetailActivity$6;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 284
    new-instance v0, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->a:Ljava/lang/String;

    .line 2113
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->a:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2129
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 3065
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 288
    const-string v2, "wx_title"

    iget-object v3, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3101
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 290
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$6;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 291
    return-void
.end method
