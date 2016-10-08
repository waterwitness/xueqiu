.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$5;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBRichImageView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/xueqiu/android/community/widget/SNBRichEditText;

.field final synthetic d:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichImageView;Landroid/widget/TextView;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->d:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->a:Lcom/xueqiu/android/community/widget/SNBRichImageView;

    iput-object p3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->c:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    check-cast p1, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    .line 1456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1457
    const-string v0, "<img class=\"ke_img\" src=\"%s/%s!custom.jpg\" />"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->a:Lcom/xueqiu/android/community/widget/SNBRichImageView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->c:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;->a:Lcom/xueqiu/android/community/widget/SNBRichImageView;

    sget v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;->b:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setUploadState(I)V

    .line 453
    :cond_0
    return-void
.end method
