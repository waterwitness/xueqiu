.class final Lcom/xueqiu/android/base/util/ap$11;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        "Lrx/a",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xueqiu/android/base/b/ai;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$11;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/ap$11;->c:Lcom/xueqiu/android/base/b/ai;

    iput-wide p4, p0, Lcom/xueqiu/android/base/util/ap$11;->d:J

    iput-object p6, p0, Lcom/xueqiu/android/base/util/ap$11;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/16 v3, 0x270f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 157
    check-cast p1, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    .line 1160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1161
    const-string v0, "%s<br/><img class=\"ke_img\" src=\"%s/%s!custom.jpg\" />"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$11;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$11;->c:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ap$11;->d:J

    invoke-static {v1, v2, v3, v0}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 1165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1166
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1167
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const v6, 0x7f07028f

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const v9, 0x7f070124

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 1168
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$11;->b:Landroid/content/Context;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$11;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/base/util/ap$11;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/xueqiu/android/base/a/b;

    const-string v1, "\u4e0a\u4f20\u56fe\u7247\u5931\u8d25, \u8bf7\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/a/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
