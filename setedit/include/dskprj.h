/* Copyright (C) 1996-2007 by Salvador E. Tropea (SET),
   see copyrigh file for details */
class TEditorProjectWindow;

class TDskWinPrj : public TDskWin
{
public:

 TDskWinPrj(char *File);
 ~TDskWinPrj();

 int  GoAction(ccIndex i);
 int  DeleteAction(ccIndex i, Boolean fromDiskToo=False);
 char *GetText(char *dest, short maxLen);
 int  Compare(void *,int t) { return (t==dktPrj); };

 TEditorProjectWindow *window;
 void Create(char *File, char *Node, Boolean TheOne=False);
 char *getFileName();
 void setFileName(char *);
 Boolean isModified();
 void clearModified();

 void write( opstream& os );
 void *read(ipstream& is);

 ushort wS, hS;
 char *FullName;

 const char *streamableName() const
     { return name; }

protected:

 TDskWinPrj( StreamableInit ) { type=dktPrj; CanBeSaved=0; CanBeDeletedFromDisk=0; };

public:

 static const char * const name;
 static TStreamable *build();
};

inline ipstream& operator >> ( ipstream& is, TDskWinPrj& cl )
    { return is >> (TStreamable&)cl; }
inline ipstream& operator >> ( ipstream& is, TDskWinPrj*& cl )
    { return is >> (void *&)cl; }

inline opstream& operator << ( opstream& os, TDskWinPrj& cl )
    { return os << (TStreamable&)cl; }
inline opstream& operator << ( opstream& os, TDskWinPrj* cl )
    { return os << (TStreamable *)cl; }
