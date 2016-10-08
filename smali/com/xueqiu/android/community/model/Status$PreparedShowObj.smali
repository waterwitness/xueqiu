.class public Lcom/xueqiu/android/community/model/Status$PreparedShowObj;
.super Ljava/lang/Object;
.source "Status.java"


# instance fields
.field public createDateLabel:Ljava/lang/String;

.field public sourceLabel:Ljava/lang/String;

.field public textFromHtml:Landroid/text/Spanned;

.field public titleFromHtml:Landroid/text/Spanned;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    .line 363
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    .line 364
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->createDateLabel:Ljava/lang/String;

    .line 365
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->sourceLabel:Ljava/lang/String;

    return-void
.end method
