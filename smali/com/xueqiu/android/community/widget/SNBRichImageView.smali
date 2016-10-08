.class public Lcom/xueqiu/android/community/widget/SNBRichImageView;
.super Landroid/widget/ImageView;
.source "SNBRichImageView.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->b:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    sget v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->g:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->g:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    sget v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->g:I

    .line 34
    return-void
.end method


# virtual methods
.method public getImageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadState()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->g:I

    return v0
.end method

.method public setImageDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->f:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->e:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUploadState(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->g:I

    .line 66
    return-void
.end method
