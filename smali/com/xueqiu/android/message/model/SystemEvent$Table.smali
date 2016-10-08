.class public Lcom/xueqiu/android/message/model/SystemEvent$Table;
.super Ljava/lang/Object;
.source "SystemEvent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static TABLE_COLUMNS:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "system_event"

.field public static final TEXT:Ljava/lang/String; = "text"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/message/model/SystemEvent$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    .line 58
    const-string v0, "CREATE TABLE %s (%s INTEGER, %s INTEGER, %s TEXT, PRIMARY KEY(%s));"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "system_event"

    aput-object v2, v1, v3

    const-string v2, "id"

    aput-object v2, v1, v4

    const-string v2, "sequence"

    aput-object v2, v1, v5

    const-string v2, "text"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/message/model/SystemEvent$Table;->CREATE_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/message/model/SystemEvent;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/SystemEvent;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v1, "sequence"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/SystemEvent;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/SystemEvent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/SystemEvent;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/xueqiu/android/message/model/SystemEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/SystemEvent;-><init>()V

    .line 62
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/SystemEvent;->setId(J)V

    .line 63
    const-string v1, "sequence"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/SystemEvent;->setSequence(J)V

    .line 64
    const-string v1, "text"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/SystemEvent;->setText(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method
