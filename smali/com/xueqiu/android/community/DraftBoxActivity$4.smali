.class final Lcom/xueqiu/android/community/DraftBoxActivity$4;
.super Ljava/lang/Object;
.source "DraftBoxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/DraftBoxActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/DraftBoxActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$4;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity$4;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->c(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->clearDraftBox()Z

    .line 304
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_0

    .line 308
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity$4;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->finish()V

    .line 314
    return-void
.end method
