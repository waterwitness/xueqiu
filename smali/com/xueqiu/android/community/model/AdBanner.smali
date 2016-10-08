.class public Lcom/xueqiu/android/community/model/AdBanner;
.super Ljava/lang/Object;
.source "AdBanner.java"


# instance fields
.field private enable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isenable"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_src"
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_url"
    .end annotation
.end field

.field private sortId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sortid"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_title"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->sortId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->type:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/AdBanner;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->enable:Z

    .line 87
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->id:I

    .line 55
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->image:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->link:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSortId(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->sortId:I

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->title:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/xueqiu/android/community/model/AdBanner;->type:I

    .line 95
    return-void
.end method
