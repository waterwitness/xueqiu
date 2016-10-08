.class final Lcom/xueqiu/android/community/WriteStatusActivity$26;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$26;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1344
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xueqiu/android/community/WriteStatusActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1346
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    const-string v0, "WriteStatusActivity"

    const-string v1, "mkdir failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_0
    if-nez p2, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$26;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->P(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 1355
    :cond_1
    :goto_0
    return-void

    .line 1352
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$26;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->O(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    goto :goto_0
.end method
