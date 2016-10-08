.class public Lcom/xueqiu/android/cube/model/Cube;
.super Ljava/lang/Object;
.source "Cube.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeFlag:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private annualizedGainRate:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private applyFlag:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field badgesExist:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bbRate:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private closedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private commission:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private contractor:Lcom/xueqiu/android/cube/model/Contractor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private contractorId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cubeLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dailyAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dailyGain:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private followerCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private following:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gainOnLevel:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private initialCapital:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastBuyRbGid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastMonthRank:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastUserRbGid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private listedFlag:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private market:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private monthlyGain:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netValue:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderTicketCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private owner:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ownerId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private performance:Lcom/xueqiu/android/cube/model/Performance;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rankPercent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private recommendReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private saleCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sellFlag:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private star:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private style:Lcom/xueqiu/android/cube/model/Style;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tag:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private topFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalGain:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalScore:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private trend:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/xueqiu/android/cube/model/Cube$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Cube$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Cube;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->badgesExist:Z

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Cube;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->id:J

    return-wide p1
.end method

.method static synthetic access$1002(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->annualizedGainRate:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalGain:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->bbRate:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xueqiu/android/cube/model/Cube;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->star:I

    return p1
.end method

.method static synthetic access$1402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rankPercent:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/xueqiu/android/cube/model/Cube;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastMonthRank:I

    return p1
.end method

.method static synthetic access$1602(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->owner:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Style;)Lcom/xueqiu/android/cube/model/Style;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->style:Lcom/xueqiu/android/cube/model/Style;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Cube;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->ownerId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/xueqiu/android/cube/model/Cube;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Performance;)Lcom/xueqiu/android/cube/model/Performance;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->performance:Lcom/xueqiu/android/cube/model/Performance;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/xueqiu/android/cube/model/Cube;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastBuyRbGid:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/xueqiu/android/cube/model/Cube;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastUserRbGid:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/xueqiu/android/cube/model/Cube;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->following:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/xueqiu/android/cube/model/Cube;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->followerCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/xueqiu/android/cube/model/Cube;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->sellFlag:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->commission:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->initialCapital:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/xueqiu/android/cube/model/Cube;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->listedFlag:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->contractorId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->saleCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyAmount:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalAmount:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/xueqiu/android/cube/model/Cube;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->applyFlag:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->orderTicketCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->cubeLevel:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->gainOnLevel:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->topFlag:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalScore:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rank:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->trend:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/cube/model/Cube;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z

    return p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->netValue:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyGain:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->monthlyGain:Ljava/lang/Double;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnualizedGainRate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->annualizedGainRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getApply()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->applyFlag:Z

    return v0
.end method

.method public getBbRate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->bbRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getClosedAt()Ljava/util/Date;
    .locals 6

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->isSpCube()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    goto :goto_0
.end method

.method public getCommission()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->commission:Ljava/lang/Double;

    return-object v0
.end method

.method public getContractor()Lcom/xueqiu/android/cube/model/Contractor;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->contractor:Lcom/xueqiu/android/cube/model/Contractor;

    return-object v0
.end method

.method public getContractorId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->contractorId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCubeLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->cubeLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDailyAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDailyGain()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyGain:Ljava/lang/Double;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerCount()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->followerCount:I

    return v0
.end method

.method public getGainOnLevel()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->gainOnLevel:Ljava/lang/Double;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Cube;->id:J

    return-wide v0
.end method

.method public getInitialCapital()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->initialCapital:Ljava/lang/Double;

    return-object v0
.end method

.method public getLastBuyRbGid()J
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastBuyRbGid:J

    return-wide v0
.end method

.method public getLastMonthRank()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastMonthRank:I

    return v0
.end method

.method public getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object v0
.end method

.method public getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object v0
.end method

.method public getLastUserRbGid()J
    .locals 2

    .prologue
    .line 625
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastUserRbGid:J

    return-wide v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthlyGain()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->monthlyGain:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->netValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getOrderTicketCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->orderTicketCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOwner()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->owner:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getOwnerId()J
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Cube;->ownerId:J

    return-wide v0
.end method

.method public getPerformance()Lcom/xueqiu/android/cube/model/Performance;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->performance:Lcom/xueqiu/android/cube/model/Performance;

    return-object v0
.end method

.method public getRank()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRankPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rankPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public getRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object v0
.end method

.method public getRecommendReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->recommendReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->saleCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->star:I

    return v0
.end method

.method public getStyle()Lcom/xueqiu/android/cube/model/Style;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->style:Lcom/xueqiu/android/cube/model/Style;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;

    return-object v0
.end method

.method public getTopFlag()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->topFlag:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalGain()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalGain:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalScore()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalScore:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrend()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->trend:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object v0
.end method

.method public isActiveFlag()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z

    return v0
.end method

.method public isBadgesExist()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->badgesExist:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->following:Z

    return v0
.end method

.method public isListedFlag()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->listedFlag:Z

    return v0
.end method

.method public isSellFlag()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->sellFlag:Z

    return v0
.end method

.method public isSpCube()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveFlag(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z

    .line 345
    return-void
.end method

.method public setAnnualizedGainRate(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->annualizedGainRate:Ljava/lang/Double;

    .line 438
    return-void
.end method

.method public setApply(Z)V
    .locals 0

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->applyFlag:Z

    .line 614
    return-void
.end method

.method public setBadgesExist(Z)V
    .locals 0

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->badgesExist:Z

    .line 702
    return-void
.end method

.method public setBbRate(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->bbRate:Ljava/lang/Double;

    .line 454
    return-void
.end method

.method public setClosedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    .line 430
    return-void
.end method

.method public setCommission(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->commission:Ljava/lang/Double;

    .line 550
    return-void
.end method

.method public setContractor(Lcom/xueqiu/android/cube/model/Contractor;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->contractor:Lcom/xueqiu/android/cube/model/Contractor;

    .line 646
    return-void
.end method

.method public setContractorId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->contractorId:Ljava/lang/Long;

    .line 574
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;

    .line 409
    return-void
.end method

.method public setCubeLevel(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->cubeLevel:Ljava/lang/Integer;

    .line 654
    return-void
.end method

.method public setDailyAmount(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyAmount:Ljava/lang/Double;

    .line 598
    return-void
.end method

.method public setDailyGain(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyGain:Ljava/lang/Double;

    .line 369
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->description:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setFollowerCount(I)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->followerCount:I

    .line 494
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->following:Z

    .line 486
    return-void
.end method

.method public setGainOnLevel(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->gainOnLevel:Ljava/lang/Double;

    .line 662
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->id:J

    .line 305
    return-void
.end method

.method public setInitialCapital(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->initialCapital:Ljava/lang/Double;

    .line 558
    return-void
.end method

.method public setLastBuyRbGid(J)V
    .locals 1

    .prologue
    .line 621
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastBuyRbGid:J

    .line 622
    return-void
.end method

.method public setLastMonthRank(I)V
    .locals 0

    .prologue
    .line 400
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastMonthRank:I

    .line 401
    return-void
.end method

.method public setLastRebalancing(Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 526
    return-void
.end method

.method public setLastSuccessRebalancing(Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 534
    return-void
.end method

.method public setLastUserRbGid(J)V
    .locals 1

    .prologue
    .line 629
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->lastUserRbGid:J

    .line 630
    return-void
.end method

.method public setListedFlag(Z)V
    .locals 0

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->listedFlag:Z

    .line 566
    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setMonthlyGain(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->monthlyGain:Ljava/lang/Double;

    .line 377
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setNetValue(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->netValue:Ljava/lang/Double;

    .line 361
    return-void
.end method

.method public setOrderTicketCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->orderTicketCount:Ljava/lang/Integer;

    .line 638
    return-void
.end method

.method public setOwner(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->owner:Lcom/xueqiu/android/community/model/User;

    .line 462
    return-void
.end method

.method public setOwnerId(J)V
    .locals 1

    .prologue
    .line 328
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Cube;->ownerId:J

    .line 329
    return-void
.end method

.method public setPerformance(Lcom/xueqiu/android/cube/model/Performance;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->performance:Lcom/xueqiu/android/cube/model/Performance;

    .line 510
    return-void
.end method

.method public setRank(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rank:Ljava/lang/Integer;

    .line 686
    return-void
.end method

.method public setRankPercent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rankPercent:Ljava/lang/Double;

    .line 393
    return-void
.end method

.method public setRebalancing(Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 470
    return-void
.end method

.method public setRecommendReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->recommendReason:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setSaleCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->saleCount:Ljava/lang/Integer;

    .line 590
    return-void
.end method

.method public setSellFlag(Z)V
    .locals 0

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Cube;->sellFlag:Z

    .line 542
    return-void
.end method

.method public setStar(I)V
    .locals 0

    .prologue
    .line 384
    iput p1, p0, Lcom/xueqiu/android/cube/model/Cube;->star:I

    .line 385
    return-void
.end method

.method public setStyle(Lcom/xueqiu/android/cube/model/Style;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->style:Lcom/xueqiu/android/cube/model/Style;

    .line 478
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;

    .line 502
    return-void
.end method

.method public setTopFlag(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->topFlag:Ljava/lang/Integer;

    .line 670
    return-void
.end method

.method public setTotalAmount(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalAmount:Ljava/lang/Double;

    .line 606
    return-void
.end method

.method public setTotalGain(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalGain:Ljava/lang/Double;

    .line 446
    return-void
.end method

.method public setTotalScore(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->totalScore:Ljava/lang/Integer;

    .line 678
    return-void
.end method

.method public setTrend(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->trend:Ljava/lang/Integer;

    .line 694
    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;

    .line 417
    return-void
.end method

.method public setViewRebalancing(Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Cube;->viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 518
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 296
    const-string v0, "[id:%s name:%s market:%s active:%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/xueqiu/android/cube/model/Cube;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-wide v4, p0, Lcom/xueqiu/android/cube/model/Cube;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-wide v4, p0, Lcom/xueqiu/android/cube/model/Cube;->ownerId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->netValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyGain:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->monthlyGain:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->annualizedGainRate:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalGain:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->bbRate:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 195
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->star:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rankPercent:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 197
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastMonthRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :cond_0
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->owner:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->style:Lcom/xueqiu/android/cube/model/Style;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->performance:Lcom/xueqiu/android/cube/model/Performance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-wide v4, p0, Lcom/xueqiu/android/cube/model/Cube;->lastBuyRbGid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-wide v4, p0, Lcom/xueqiu/android/cube/model/Cube;->lastUserRbGid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->following:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/xueqiu/android/cube/model/Cube;->followerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->sellFlag:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->commission:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->initialCapital:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 216
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->listedFlag:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->contractorId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->saleCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->dailyAmount:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalAmount:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 221
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->applyFlag:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->orderTicketCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->cubeLevel:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->gainOnLevel:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->topFlag:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->totalScore:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->rank:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Cube;->trend:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 229
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Cube;->badgesExist:Z

    if-eqz v0, :cond_8

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void

    :cond_1
    move v0, v2

    .line 187
    goto/16 :goto_0

    :cond_2
    move-wide v4, v6

    .line 198
    goto/16 :goto_1

    :cond_3
    move-wide v4, v6

    .line 199
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 211
    goto :goto_3

    :cond_5
    move v0, v2

    .line 213
    goto :goto_4

    :cond_6
    move v0, v2

    .line 216
    goto :goto_5

    :cond_7
    move v0, v2

    .line 221
    goto :goto_6

    :cond_8
    move v1, v2

    .line 229
    goto :goto_7
.end method
