.class final Lcom/xueqiu/android/community/a$3;
.super Lcom/xueqiu/android/base/b/p;
.source "CommentListItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a;
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
.field final synthetic a:Lcom/xueqiu/android/community/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/xueqiu/android/community/a$3;->a:Lcom/xueqiu/android/community/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/community/a$3;->a:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 346
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 347
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1351
    iget-object v0, p0, Lcom/xueqiu/android/community/a$3;->a:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1352
    const-string v0, "image"

    .line 2106
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1353
    if-nez v1, :cond_0

    .line 1354
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1355
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1357
    new-instance v1, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v1}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 3105
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 1359
    iget-object v0, p0, Lcom/xueqiu/android/community/a$3;->a:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)Lcom/xueqiu/android/common/widget/aj;

    .line 1360
    :goto_0
    return-void

    .line 1361
    :cond_0
    const-string v0, "\u751f\u6210\u56fe\u7247\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
