.class public Lcom/xueqiu/android/cube/model/RecommendCube;
.super Ljava/lang/Object;
.source "RecommendCube.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/RecommendCube;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cube:Lcom/xueqiu/android/cube/model/Cube;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hasExist:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_exist"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private owner:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private recommendReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_reason"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/xueqiu/android/cube/model/RecommendCube$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/RecommendCube$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/RecommendCube;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/RecommendCube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/RecommendCube;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/RecommendCube;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/RecommendCube;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/RecommendCube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getCube()Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getRecommendReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;

    return-object v0
.end method

.method public isHasExist()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z

    return v0
.end method

.method public setCube(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;

    .line 82
    return-void
.end method

.method public setHasExist(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setOwner(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;

    .line 90
    return-void
.end method

.method public setRecommendReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecommendCube{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cube="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasExist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
