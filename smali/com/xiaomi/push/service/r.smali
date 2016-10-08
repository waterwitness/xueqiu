.class final Lcom/xiaomi/push/service/r;
.super Ljava/lang/Object;


# static fields
.field static e:I


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:I

.field c:J

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    sput v0, Lcom/xiaomi/push/service/r;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iput-object p1, p0, Lcom/xiaomi/push/service/r;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaomi/push/service/r;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/r;->c:J

    return-void
.end method
