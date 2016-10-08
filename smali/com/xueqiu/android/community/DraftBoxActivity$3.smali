.class final Lcom/xueqiu/android/community/DraftBoxActivity$3;
.super Ljava/lang/Object;
.source "DraftBoxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/DraftBoxActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/DraftBoxActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->a(Lcom/xueqiu/android/community/DraftBoxActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->b(Lcom/xueqiu/android/community/DraftBoxActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->a(ILjava/lang/String;)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->c(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getAllDraft()Landroid/database/Cursor;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->d(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/community/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity$3;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->d(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/community/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c;->notifyDataSetChanged()V

    .line 194
    :cond_0
    return-void
.end method
