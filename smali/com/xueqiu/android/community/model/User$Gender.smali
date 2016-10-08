.class public final enum Lcom/xueqiu/android/community/model/User$Gender;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/community/model/User$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/community/model/User$Gender;

.field public static final enum FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

.field public static final enum MALE:Lcom/xueqiu/android/community/model/User$Gender;

.field public static final enum UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    new-instance v0, Lcom/xueqiu/android/community/model/User$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/community/model/User$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    .line 242
    new-instance v0, Lcom/xueqiu/android/community/model/User$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/community/model/User$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    .line 243
    new-instance v0, Lcom/xueqiu/android/community/model/User$Gender;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/community/model/User$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/community/model/User$Gender;

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/community/model/User$Gender;->$VALUES:[Lcom/xueqiu/android/community/model/User$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User$Gender;
    .locals 1

    .prologue
    .line 240
    const-class v0, Lcom/xueqiu/android/community/model/User$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User$Gender;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/community/model/User$Gender;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->$VALUES:[Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0}, [Lcom/xueqiu/android/community/model/User$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/community/model/User$Gender;

    return-object v0
.end method
