.class final Lcom/xueqiu/android/common/a$6$1;
.super Lcom/d/a/b/f/d;
.source "AboutUsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/a$6;
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/xueqiu/android/common/a$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a$6;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iput-object p2, p0, Lcom/xueqiu/android/common/a$6$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/d/a/b/a/b;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->z()V

    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    .line 4042
    iget-object v1, p1, Lcom/d/a/b/a/b;->a:Ljava/lang/Throwable;

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 211
    if-nez p3, :cond_0

    .line 224
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/a;->b(Lcom/xueqiu/android/common/a;)Lcom/xueqiu/android/common/widget/aj;

    move-result-object v0

    .line 1915
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/common/a$6$1;->a:Lorg/json/JSONObject;

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " http://xueqiu.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2113
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/a;->b(Lcom/xueqiu/android/common/a;)Lcom/xueqiu/android/common/widget/aj;

    move-result-object v0

    .line 2915
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 216
    iget-object v1, p0, Lcom/xueqiu/android/common/a$6$1;->a:Lorg/json/JSONObject;

    const-string v2, "img_url"

    .line 217
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3137
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/a;->b(Lcom/xueqiu/android/common/a;)Lcom/xueqiu/android/common/widget/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget v1, v1, Lcom/xueqiu/android/common/a$6;->b:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6$1;->b:Lcom/xueqiu/android/common/a$6;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->z()V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
