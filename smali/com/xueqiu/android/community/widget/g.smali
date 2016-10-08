.class public Lcom/xueqiu/android/community/widget/g;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"


# instance fields
.field category:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field htmlText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field imageDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field imagePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field isHeader:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput p1, p0, Lcom/xueqiu/android/community/widget/g;->category:I

    .line 820
    iput-object p2, p0, Lcom/xueqiu/android/community/widget/g;->htmlText:Ljava/lang/String;

    .line 821
    iput-boolean p3, p0, Lcom/xueqiu/android/community/widget/g;->isHeader:Z

    .line 822
    iput-object p4, p0, Lcom/xueqiu/android/community/widget/g;->imagePath:Ljava/lang/String;

    .line 823
    iput-object p5, p0, Lcom/xueqiu/android/community/widget/g;->imageDescription:Ljava/lang/String;

    .line 824
    return-void
.end method
